
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* bitmap_destroy ) (int *) ;} ;
struct TYPE_5__ {int * global_colour_table; int * local_colour_table; int * frames; int * frame_image; TYPE_1__ bitmap_callbacks; } ;
typedef TYPE_2__ gif_animation ;


 int assert (int (*) (int *)) ;
 int free (int *) ;
 int stub1 (int *) ;

void gif_finalise(gif_animation *gif) {


    if (gif->frame_image) {
        assert(gif->bitmap_callbacks.bitmap_destroy);
        gif->bitmap_callbacks.bitmap_destroy(gif->frame_image);
    }
    gif->frame_image = ((void*)0);
    free(gif->frames);
    gif->frames = ((void*)0);
    free(gif->local_colour_table);
    gif->local_colour_table = ((void*)0);
    free(gif->global_colour_table);
    gif->global_colour_table = ((void*)0);
}
