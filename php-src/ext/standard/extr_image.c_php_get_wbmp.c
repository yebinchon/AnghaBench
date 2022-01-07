
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfxinfo {int width; int height; } ;
typedef int php_stream ;


 int IMAGE_FILETYPE_WBMP ;
 int php_stream_getc (int *) ;
 scalar_t__ php_stream_rewind (int *) ;

__attribute__((used)) static int php_get_wbmp(php_stream *stream, struct gfxinfo **result, int check)
{
 int i, width = 0, height = 0;

 if (php_stream_rewind(stream)) {
  return 0;
 }


 if (php_stream_getc(stream) != 0) {
  return 0;
 }


 do {
  i = php_stream_getc(stream);
  if (i < 0) {
   return 0;
  }
 } while (i & 0x80);


 do {
  i = php_stream_getc(stream);
  if (i < 0) {
   return 0;
  }
  width = (width << 7) | (i & 0x7f);

        if (width > 2048) {
            return 0;
        }
 } while (i & 0x80);


 do {
  i = php_stream_getc(stream);
  if (i < 0) {
   return 0;
  }
  height = (height << 7) | (i & 0x7f);

        if (height > 2048) {
            return 0;
        }
 } while (i & 0x80);

 if (!height || !width) {
  return 0;
 }

 if (!check) {
  (*result)->width = width;
  (*result)->height = height;
 }

 return IMAGE_FILETYPE_WBMP;
}
