
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct gfxinfo {void* channels; void* width; void* height; void* bits; } ;
typedef int php_stream ;
 unsigned int M_PSEUDO ;
 int SEEK_CUR ;
 scalar_t__ ecalloc (int,int) ;
 unsigned int php_next_marker (int *,unsigned int,unsigned short) ;
 void* php_read2 (int *) ;
 int php_read_APP (int *,unsigned int,int *) ;
 int php_skip_variable (int *) ;
 void* php_stream_getc (int *) ;
 int php_stream_seek (int *,unsigned short,int ) ;

__attribute__((used)) static struct gfxinfo *php_handle_jpeg (php_stream * stream, zval *info)
{
 struct gfxinfo *result = ((void*)0);
 unsigned int marker = M_PSEUDO;
 unsigned short length, ff_read=1;

 for (;;) {
  marker = php_next_marker(stream, marker, ff_read);
  ff_read = 0;
  switch (marker) {
   case 141:
   case 140:
   case 134:
   case 133:
   case 132:
   case 131:
   case 130:
   case 129:
   case 139:
   case 138:
   case 137:
   case 136:
   case 135:
    if (result == ((void*)0)) {

     result = (struct gfxinfo *) ecalloc(1, sizeof(struct gfxinfo));
     length = php_read2(stream);
     result->bits = php_stream_getc(stream);
     result->height = php_read2(stream);
     result->width = php_read2(stream);
     result->channels = php_stream_getc(stream);
     if (!info || length < 8) {
      return result;
     }
     if (php_stream_seek(stream, length - 8, SEEK_CUR)) {
      return result;
     }
    } else {
     if (!php_skip_variable(stream)) {
      return result;
     }
    }
    break;

   case 158:
   case 157:
   case 150:
   case 149:
   case 148:
   case 147:
   case 146:
   case 145:
   case 144:
   case 143:
   case 156:
   case 155:
   case 154:
   case 153:
   case 152:
   case 151:
    if (info) {
     if (!php_read_APP(stream, marker, info)) {
      return result;
     }
    } else {
     if (!php_skip_variable(stream)) {
      return result;
     }
    }
    break;

   case 128:
   case 142:
    return result;

   default:
    if (!php_skip_variable(stream)) {
     return result;
    }
    break;
  }
 }

 return result;
}
