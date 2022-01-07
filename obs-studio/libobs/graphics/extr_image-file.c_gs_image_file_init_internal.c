
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int cx; int cy; int loaded; int texture_data; int format; } ;
typedef TYPE_1__ gs_image_file_t ;


 int LOG_WARNING ;
 int blog (int ,char*,char const*) ;
 int gs_create_texture_file_data (char const*,int *,int*,int*) ;
 int gs_get_format_bpp (int ) ;
 int gs_image_file_free (TYPE_1__*) ;
 scalar_t__ init_animated_gif (TYPE_1__*,char const*,int*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void gs_image_file_init_internal(gs_image_file_t *image,
     const char *file, uint64_t *mem_usage)
{
 size_t len;

 if (!image)
  return;

 memset(image, 0, sizeof(*image));

 if (!file)
  return;

 len = strlen(file);

 if (len > 4 && strcmp(file + len - 4, ".gif") == 0) {
  if (init_animated_gif(image, file, mem_usage))
   return;
 }

 image->texture_data = gs_create_texture_file_data(
  file, &image->format, &image->cx, &image->cy);

 if (mem_usage) {
  *mem_usage += image->cx * image->cy *
         gs_get_format_bpp(image->format) / 8;
 }

 image->loaded = !!image->texture_data;
 if (!image->loaded) {
  blog(LOG_WARNING, "Failed to load file '%s'", file);
  gs_image_file_free(image);
 }
}
