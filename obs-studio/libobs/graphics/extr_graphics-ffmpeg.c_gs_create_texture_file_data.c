
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct ffmpeg_image {int cx; int cy; int format; } ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;


 int bfree (int *) ;
 int * bmalloc (int) ;
 int convert_format (int ) ;
 scalar_t__ ffmpeg_image_decode (struct ffmpeg_image*,int *,int) ;
 int ffmpeg_image_free (struct ffmpeg_image*) ;
 scalar_t__ ffmpeg_image_init (struct ffmpeg_image*,char const*) ;

uint8_t *gs_create_texture_file_data(const char *file,
         enum gs_color_format *format,
         uint32_t *cx_out, uint32_t *cy_out)
{
 struct ffmpeg_image image;
 uint8_t *data = ((void*)0);

 if (ffmpeg_image_init(&image, file)) {
  data = bmalloc(image.cx * image.cy * 4);

  if (ffmpeg_image_decode(&image, data, image.cx * 4)) {
   *format = convert_format(image.format);
   *cx_out = (uint32_t)image.cx;
   *cy_out = (uint32_t)image.cy;
  } else {
   bfree(data);
   data = ((void*)0);
  }

  ffmpeg_image_free(&image);
 }

 return data;
}
