
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int gif_result ;
struct TYPE_7__ {int frame_pointer; int display; int virgin; scalar_t__ disposal_method; int transparency; int frame_delay; int redraw_required; unsigned int redraw_x; unsigned int redraw_width; unsigned int redraw_y; unsigned int redraw_height; } ;
typedef TYPE_1__ gif_frame ;
struct TYPE_8__ {int frame_count; unsigned char* gif_data; int buffer_position; int buffer_size; int frame_holders; int decoded_frame; int frame_count_partial; TYPE_1__* frames; } ;
typedef TYPE_2__ gif_animation ;


 unsigned int GIF_COLOUR_TABLE_MASK ;
 unsigned int GIF_COLOUR_TABLE_SIZE_MASK ;
 int GIF_DATA_ERROR ;
 scalar_t__ GIF_FRAME_CLEAR ;
 int GIF_FRAME_DATA_ERROR ;
 scalar_t__ GIF_FRAME_RESTORE ;
 unsigned char GIF_IMAGE_SEPARATOR ;
 int GIF_INSUFFICIENT_DATA ;
 int GIF_INSUFFICIENT_FRAME_DATA ;
 int GIF_INSUFFICIENT_MEMORY ;
 int GIF_INVALID_FRAME ;
 unsigned char GIF_MAX_LZW ;
 int GIF_OK ;
 unsigned char GIF_TRAILER ;
 int GIF_WORKING ;
 int gif_initialise_frame_extensions (TYPE_2__*,int) ;
 scalar_t__ gif_initialise_sprite (TYPE_2__*,unsigned int,unsigned int) ;
 scalar_t__ realloc (TYPE_1__*,int) ;

__attribute__((used)) static gif_result gif_initialise_frame(gif_animation *gif) {
    int frame;
    gif_frame *temp_buf;

    unsigned char *gif_data, *gif_end;
    int gif_bytes;
    unsigned int flags = 0;
    unsigned int width, height, offset_x, offset_y;
    unsigned int block_size, colour_table_size;
    bool first_image = 1;
    gif_result return_value;



    frame = gif->frame_count;



    gif_data = (unsigned char *)(gif->gif_data + gif->buffer_position);
    gif_end = (unsigned char *)(gif->gif_data + gif->buffer_size);
    gif_bytes = (unsigned int)(gif_end - gif_data);



    if ((gif_bytes > 0) && (gif_data[0] == GIF_TRAILER)) return GIF_OK;




    if (gif_bytes < 6) return GIF_INSUFFICIENT_DATA;




    if (frame > 4096) return GIF_FRAME_DATA_ERROR;



    if ((int)gif->frame_holders <= frame) {


        if ((temp_buf = (gif_frame *)realloc(gif->frames,
                    (frame + 1) * sizeof(gif_frame))) == ((void*)0))
            return GIF_INSUFFICIENT_MEMORY;
        gif->frames = temp_buf;
        gif->frame_holders = frame + 1;
    }




    gif->frames[frame].frame_pointer = gif->buffer_position;
    gif->frames[frame].display = 0;
    gif->frames[frame].virgin = 1;
    gif->frames[frame].disposal_method = 0;
    gif->frames[frame].transparency = 0;
    gif->frames[frame].frame_delay = 100;
    gif->frames[frame].redraw_required = 0;



    if (gif->decoded_frame == frame)
        gif->decoded_frame = GIF_INVALID_FRAME;
    gif->buffer_position = (unsigned int)(gif_data - gif->gif_data);
    if ((return_value = gif_initialise_frame_extensions(gif, frame)) != GIF_OK)
        return return_value;
    gif_data = (gif->gif_data + gif->buffer_position);
    gif_bytes = (unsigned int)(gif_end - gif_data);



    if ((gif_bytes = (unsigned int)(gif_end - gif_data)) < 1)
        return GIF_INSUFFICIENT_FRAME_DATA;
    else if (gif_data[0] == GIF_TRAILER) {
        gif->buffer_position = (unsigned int)(gif_data - gif->gif_data);
        gif->frame_count = frame + 1;
        return GIF_OK;
    }



    if (gif_data[0] != GIF_IMAGE_SEPARATOR) return GIF_FRAME_DATA_ERROR;



    offset_x = gif_data[1] | (gif_data[2] << 8);
    offset_y = gif_data[3] | (gif_data[4] << 8);
    width = gif_data[5] | (gif_data[6] << 8);
    height = gif_data[7] | (gif_data[8] << 8);




    if (!first_image) {
        if (gif->frames[frame].redraw_x > offset_x) {
            gif->frames[frame].redraw_width += (gif->frames[frame].redraw_x - offset_x);
            gif->frames[frame].redraw_x = offset_x;
        }
        if (gif->frames[frame].redraw_y > offset_y) {
            gif->frames[frame].redraw_height += (gif->frames[frame].redraw_y - offset_y);
            gif->frames[frame].redraw_y = offset_y;
        }
        if ((offset_x + width) > (gif->frames[frame].redraw_x + gif->frames[frame].redraw_width))
            gif->frames[frame].redraw_width = (offset_x + width) - gif->frames[frame].redraw_x;
        if ((offset_y + height) > (gif->frames[frame].redraw_y + gif->frames[frame].redraw_height))
            gif->frames[frame].redraw_height = (offset_y + height) - gif->frames[frame].redraw_y;
    } else {
        first_image = 0;
        gif->frames[frame].redraw_x = offset_x;
        gif->frames[frame].redraw_y = offset_y;
        gif->frames[frame].redraw_width = width;
        gif->frames[frame].redraw_height = height;
    }




    gif->frames[frame].redraw_required = ((gif->frames[frame].disposal_method == GIF_FRAME_CLEAR) ||
                        (gif->frames[frame].disposal_method == GIF_FRAME_RESTORE));



    if (gif_initialise_sprite(gif, (offset_x + width), (offset_y + height)))
        return GIF_INSUFFICIENT_MEMORY;



    flags = gif_data[9];
    colour_table_size = 2 << (flags & GIF_COLOUR_TABLE_SIZE_MASK);



    gif_data += 10;
    gif_bytes = (unsigned int)(gif_end - gif_data);
    gif->frame_count_partial = frame + 1;



    if (flags & GIF_COLOUR_TABLE_MASK) {
        gif_data += 3 * colour_table_size;
        if ((gif_bytes = (unsigned int)(gif_end - gif_data)) < 0)
            return GIF_INSUFFICIENT_FRAME_DATA;
    }



    if (gif_data[0] > GIF_MAX_LZW)
        return GIF_DATA_ERROR;



    gif_data++;
    if (--gif_bytes < 0)
        return GIF_INSUFFICIENT_FRAME_DATA;




    block_size = 0;
    while (block_size != 1) {
        block_size = gif_data[0] + 1;


        if ((int)(gif_bytes - block_size) < 0) {






            if (gif_bytes >= 2) {
                gif_data[0] = 0;
                gif_data[1] = GIF_TRAILER;
                gif_bytes = 1;
                ++gif_data;
                break;
            } else
                return GIF_INSUFFICIENT_FRAME_DATA;
        } else {
            gif_bytes -= block_size;
            gif_data += block_size;
        }
    }



    gif->buffer_position = (unsigned int)(gif_data - gif->gif_data);
    gif->frame_count = frame + 1;
    gif->frames[frame].display = 1;



    if (gif_bytes < 1)
        return GIF_INSUFFICIENT_FRAME_DATA;
    else
        if (gif_data[0] == GIF_TRAILER) return GIF_OK;
    return GIF_WORKING;
}
