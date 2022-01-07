
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int frame_image; } ;
struct TYPE_5__ {int * texture_data; int format; int cy; int cx; void* texture; TYPE_1__ gif; scalar_t__ is_animated_gif; int loaded; } ;
typedef TYPE_2__ gs_image_file_t ;


 int GS_DYNAMIC ;
 int bfree (int *) ;
 void* gs_texture_create (int ,int ,int ,int,int const**,int ) ;

void gs_image_file_init_texture(gs_image_file_t *image)
{
 if (!image->loaded)
  return;

 if (image->is_animated_gif) {
  image->texture = gs_texture_create(
   image->cx, image->cy, image->format, 1,
   (const uint8_t **)&image->gif.frame_image, GS_DYNAMIC);

 } else {
  image->texture = gs_texture_create(
   image->cx, image->cy, image->format, 1,
   (const uint8_t **)&image->texture_data, 0);
  bfree(image->texture_data);
  image->texture_data = ((void*)0);
 }
}
