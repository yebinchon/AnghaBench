
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int width; } ;
struct TYPE_6__ {size_t cur_frame; TYPE_1__ gif; int * animation_frame_cache; int texture; int loaded; int is_animated_gif; } ;
typedef TYPE_2__ gs_image_file_t ;


 int decode_new_frame (TYPE_2__*,size_t) ;
 int gs_texture_set_image (int ,int ,int,int) ;

void gs_image_file_update_texture(gs_image_file_t *image)
{
 if (!image->is_animated_gif || !image->loaded)
  return;

 if (!image->animation_frame_cache[image->cur_frame])
  decode_new_frame(image, image->cur_frame);

 gs_texture_set_image(image->texture,
        image->animation_frame_cache[image->cur_frame],
        image->gif.width * 4, 0);
}
