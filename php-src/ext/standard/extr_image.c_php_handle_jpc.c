
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfxinfo {int channels; int bits; void* height; void* width; } ;
typedef int php_stream ;


 int E_WARNING ;
 unsigned char JPEG2000_MARKER_SIZ ;
 int SEEK_CUR ;
 scalar_t__ ecalloc (int,int) ;
 int efree (struct gfxinfo*) ;
 int php_error_docref (int *,int ,char*) ;
 int php_read2 (int *) ;
 void* php_read4 (int *) ;
 scalar_t__ php_stream_eof (int *) ;
 void* php_stream_getc (int *) ;
 scalar_t__ php_stream_seek (int *,int,int ) ;

__attribute__((used)) static struct gfxinfo *php_handle_jpc(php_stream * stream)
{
 struct gfxinfo *result = ((void*)0);
 int highest_bit_depth, bit_depth;
 unsigned char first_marker_id;
 unsigned int i;
 first_marker_id = php_stream_getc(stream);


 if (first_marker_id != JPEG2000_MARKER_SIZ) {
  php_error_docref(((void*)0), E_WARNING, "JPEG2000 codestream corrupt(Expected SIZ marker not found after SOC)");
  return ((void*)0);
 }

 result = (struct gfxinfo *)ecalloc(1, sizeof(struct gfxinfo));

 php_read2(stream);
 php_read2(stream);
 result->width = php_read4(stream);
 result->height = php_read4(stream);
 if (php_stream_seek(stream, 24, SEEK_CUR)) {
  efree(result);
  return ((void*)0);
 }


 result->channels = php_read2(stream);
 if ((result->channels == 0 && php_stream_eof(stream)) || result->channels > 256) {
  efree(result);
  return ((void*)0);
 }


 highest_bit_depth = 0;
 for (i = 0; i < result->channels; i++) {
  bit_depth = php_stream_getc(stream);
  bit_depth++;
  if (bit_depth > highest_bit_depth) {
   highest_bit_depth = bit_depth;
  }

  php_stream_getc(stream);
  php_stream_getc(stream);
 }

 result->bits = highest_bit_depth;

 return result;
}
