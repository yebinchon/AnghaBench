
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ gif_result ;
typedef int gif_frame ;
struct TYPE_6__ {int * (* bitmap_create ) (int,int) ;} ;
struct TYPE_7__ {unsigned int buffer_size; unsigned char* gif_data; int buffer_position; unsigned int* local_colour_table; unsigned int* global_colour_table; scalar_t__ frame_count_partial; unsigned char width; unsigned char height; unsigned char global_colours; int colour_table_size; unsigned char background_index; unsigned char aspect_ratio; int loop_count; int frame_holders; TYPE_1__ bitmap_callbacks; int * frame_image; int * frames; int decoded_frame; scalar_t__ frame_count; } ;
typedef TYPE_2__ gif_animation ;


 unsigned char GIF_COLOUR_TABLE_MASK ;
 unsigned char GIF_COLOUR_TABLE_SIZE_MASK ;
 scalar_t__ GIF_DATA_ERROR ;
 scalar_t__ GIF_INSUFFICIENT_DATA ;
 scalar_t__ GIF_INSUFFICIENT_FRAME_DATA ;
 scalar_t__ GIF_INSUFFICIENT_MEMORY ;
 int GIF_INVALID_FRAME ;
 int GIF_MAX_COLOURS ;
 scalar_t__ GIF_OK ;
 unsigned int GIF_PROCESS_COLOURS ;
 unsigned char GIF_TRAILER ;
 scalar_t__ GIF_WORKING ;
 int assert (int * (*) (int,int)) ;
 scalar_t__ calloc (int ,int) ;
 int gif_finalise (TYPE_2__*) ;
 scalar_t__ gif_initialise_frame (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int * stub1 (int,int) ;

gif_result gif_initialise(gif_animation *gif, size_t size, unsigned char *data) {
    unsigned char *gif_data;
    unsigned int index;
    gif_result return_value;







    gif->buffer_size = (unsigned int)size;
    gif->gif_data = data;



    if (gif->buffer_size < 13) return GIF_INSUFFICIENT_DATA;



    gif_data = gif->gif_data + gif->buffer_position;



    if (gif->buffer_position == 0) {




        gif->frame_image = ((void*)0);
        gif->frames = ((void*)0);
        gif->local_colour_table = ((void*)0);
        gif->global_colour_table = ((void*)0);



        gif->frame_count = 0;
        gif->frame_count_partial = 0;
        gif->decoded_frame = GIF_INVALID_FRAME;






        if (strncmp((const char *) gif_data, "GIF", 3) != 0)
            return GIF_DATA_ERROR;
        gif_data += 3;






          gif_data += 3;
        gif->width = gif_data[0] | (gif_data[1] << 8);
        gif->height = gif_data[2] | (gif_data[3] << 8);
        gif->global_colours = (gif_data[4] & GIF_COLOUR_TABLE_MASK);
        gif->colour_table_size = (2 << (gif_data[4] & GIF_COLOUR_TABLE_SIZE_MASK));
        gif->background_index = gif_data[5];
        gif->aspect_ratio = gif_data[6];
        gif->loop_count = 1;
        gif_data += 7;





        if (((gif->width == 640) && (gif->height == 480)) ||
                ((gif->width == 640) && (gif->height == 512)) ||
                ((gif->width == 800) && (gif->height == 600)) ||
                ((gif->width == 1024) && (gif->height == 768)) ||
                ((gif->width == 1280) && (gif->height == 1024)) ||
                ((gif->width == 1600) && (gif->height == 1200)) ||
                ((gif->width == 0) || (gif->height == 0)) ||
                ((gif->width > 2048) || (gif->height > 2048))) {
            gif->width = 1;
            gif->height = 1;
        }





        gif->global_colour_table = (unsigned int *)calloc(GIF_MAX_COLOURS, sizeof(int));
        gif->local_colour_table = (unsigned int *)calloc(GIF_MAX_COLOURS, sizeof(int));
        if ((gif->global_colour_table == ((void*)0)) || (gif->local_colour_table == ((void*)0))) {
            gif_finalise(gif);
            return GIF_INSUFFICIENT_MEMORY;
        }




        gif->global_colour_table[0] = GIF_PROCESS_COLOURS;




        if (gif->buffer_size == 14) {
            if (gif_data[0] == GIF_TRAILER)
                return GIF_OK;
            else
                return GIF_INSUFFICIENT_DATA;
        }



        if ((gif->frames = (gif_frame *)malloc(sizeof(gif_frame))) == ((void*)0)) {
            gif_finalise(gif);
            return GIF_INSUFFICIENT_MEMORY;
        }
        gif->frame_holders = 1;



        assert(gif->bitmap_callbacks.bitmap_create);
        if ((gif->frame_image = gif->bitmap_callbacks.bitmap_create(gif->width, gif->height)) == ((void*)0)) {
            gif_finalise(gif);
            return GIF_INSUFFICIENT_MEMORY;
        }



        gif->buffer_position = (unsigned int)(gif_data - gif->gif_data);
    }




    if (gif->global_colour_table[0] == GIF_PROCESS_COLOURS) {


        if (gif->global_colours) {
            if (gif->buffer_size < (gif->colour_table_size * 3 + 12)) {
                return GIF_INSUFFICIENT_DATA;
            }
            for (index = 0; index < gif->colour_table_size; index++) {







                unsigned char *entry = (unsigned char *) &gif->
                        global_colour_table[index];

                entry[0] = gif_data[0];
                entry[1] = gif_data[1];
                entry[2] = gif_data[2];
                entry[3] = 0xff;

                gif_data += 3;
            }
            gif->buffer_position = (unsigned int)(gif_data - gif->gif_data);
        } else {


            unsigned int *entry = gif->global_colour_table;

            entry[0] = 0x00000000;

            ((unsigned char *) entry)[3] = 0xff;

            entry[1] = 0xffffffff;
        }
    }



    while ((return_value = gif_initialise_frame(gif)) == GIF_WORKING);



    if ((return_value == GIF_INSUFFICIENT_MEMORY) ||
            (return_value == GIF_DATA_ERROR))
        return return_value;




    if ((return_value == GIF_INSUFFICIENT_DATA) && (gif->frame_count_partial > 0))
        return GIF_INSUFFICIENT_FRAME_DATA;



    return return_value;
}
