
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gif_data; int texture_data; int texture; int animation_frame_data; int animation_frame_cache; int gif; scalar_t__ is_animated_gif; scalar_t__ loaded; } ;
typedef TYPE_1__ gs_image_file_t ;


 int bfree (int ) ;
 int gif_finalise (int *) ;
 int gs_texture_destroy (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void gs_image_file_free(gs_image_file_t *image)
{
 if (!image)
  return;

 if (image->loaded) {
  if (image->is_animated_gif) {
   gif_finalise(&image->gif);
   bfree(image->animation_frame_cache);
   bfree(image->animation_frame_data);
  }

  gs_texture_destroy(image->texture);
 }

 bfree(image->texture_data);
 bfree(image->gif_data);
 memset(image, 0, sizeof(*image));
}
