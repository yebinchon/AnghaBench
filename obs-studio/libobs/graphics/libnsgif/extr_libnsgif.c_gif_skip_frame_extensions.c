
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gif_result ;
struct TYPE_3__ {unsigned char* gif_data; int buffer_position; int buffer_size; } ;
typedef TYPE_1__ gif_animation ;


 unsigned char GIF_BLOCK_TERMINATOR ;

 unsigned char GIF_EXTENSION_INTRODUCER ;
 int GIF_INSUFFICIENT_FRAME_DATA ;
 int GIF_OK ;

__attribute__((used)) static gif_result gif_skip_frame_extensions(gif_animation *gif) {
    unsigned char *gif_data, *gif_end;
    int gif_bytes;
    unsigned int block_size;



    gif_data = (unsigned char *)(gif->gif_data + gif->buffer_position);
    gif_end = (unsigned char *)(gif->gif_data + gif->buffer_size);
    gif_bytes = (unsigned int)(gif_end - gif_data);



    while (gif_data[0] == GIF_EXTENSION_INTRODUCER) {
        ++gif_data;



        switch(gif_data[0]) {



            case 128:
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
