
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gif_result ;
struct TYPE_5__ {unsigned char* gif_data; int buffer_position; int buffer_size; unsigned char loop_count; TYPE_1__* frames; } ;
typedef TYPE_2__ gif_animation ;
struct TYPE_4__ {unsigned char frame_delay; int transparency; unsigned char transparency_index; unsigned char disposal_method; } ;


 unsigned char GIF_BLOCK_TERMINATOR ;
 unsigned char GIF_DISPOSAL_MASK ;



 unsigned char GIF_EXTENSION_INTRODUCER ;
 unsigned char GIF_FRAME_QUIRKS_RESTORE ;
 unsigned char GIF_FRAME_RESTORE ;
 int GIF_INSUFFICIENT_FRAME_DATA ;
 int GIF_OK ;
 unsigned char GIF_TRANSPARENCY_MASK ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static gif_result gif_initialise_frame_extensions(gif_animation *gif, const int frame) {
    unsigned char *gif_data, *gif_end;
    int gif_bytes;
    unsigned int block_size;



    gif_data = (unsigned char *)(gif->gif_data + gif->buffer_position);
    gif_end = (unsigned char *)(gif->gif_data + gif->buffer_size);



    while (gif_data[0] == GIF_EXTENSION_INTRODUCER) {
        ++gif_data;
        gif_bytes = (unsigned int)(gif_end - gif_data);



        switch(gif_data[0]) {
            case 128:
                if (gif_bytes < 6) return GIF_INSUFFICIENT_FRAME_DATA;
                gif->frames[frame].frame_delay = gif_data[3] | (gif_data[4] << 8);
                if (gif_data[2] & GIF_TRANSPARENCY_MASK) {
                    gif->frames[frame].transparency = 1;
                    gif->frames[frame].transparency_index = gif_data[5];
                }
                gif->frames[frame].disposal_method = ((gif_data[2] & GIF_DISPOSAL_MASK) >> 2);





                if (gif->frames[frame].disposal_method == GIF_FRAME_QUIRKS_RESTORE)
                    gif->frames[frame].disposal_method = GIF_FRAME_RESTORE;
                gif_data += (2 + gif_data[1]);
                break;
            case 130:
                if (gif_bytes < 17) return GIF_INSUFFICIENT_FRAME_DATA;
                if ((gif_data[1] == 0x0b) &&
                    (strncmp((const char *) gif_data + 2,
                        "NETSCAPE2.0", 11) == 0) &&
                    (gif_data[13] == 0x03) &&
                    (gif_data[14] == 0x01)) {
                        gif->loop_count = gif_data[15] | (gif_data[16] << 8);
                }
                gif_data += (2 + gif_data[1]);
                break;




            case 129:
                ++gif_data;
                break;





            default:
                gif_data += (2 + gif_data[1]);
        }




        gif_bytes = (unsigned int)(gif_end - gif_data);
        block_size = 0;
        while (gif_data[0] != GIF_BLOCK_TERMINATOR) {
            block_size = gif_data[0] + 1;
            if ((gif_bytes -= block_size) < 0)
                return GIF_INSUFFICIENT_FRAME_DATA;
            gif_data += block_size;
        }
        ++gif_data;
    }



    gif->buffer_position = (unsigned int)(gif_data - gif->gif_data);
    return GIF_OK;
}
