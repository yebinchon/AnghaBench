
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfxinfo {int dummy; } ;
typedef int php_stream ;
typedef int box_type ;


 int E_WARNING ;
 int SEEK_CUR ;
 int memcmp (unsigned int*,char*,int) ;
 int php_error_docref (int *,int ,char*) ;
 struct gfxinfo* php_handle_jpc (int *) ;
 unsigned int php_read4 (int *) ;
 int php_stream_read (int *,void*,int) ;
 scalar_t__ php_stream_seek (int *,unsigned int,int ) ;

__attribute__((used)) static struct gfxinfo *php_handle_jp2(php_stream *stream)
{
 struct gfxinfo *result = ((void*)0);
 unsigned int box_length;
 unsigned int box_type;
 char jp2c_box_id[] = {(char)0x6a, (char)0x70, (char)0x32, (char)0x63};
 for (;;)
 {
  box_length = php_read4(stream);

  if (php_stream_read(stream, (void *)&box_type, sizeof(box_type)) != sizeof(box_type)) {

   break;
  }

  if (box_length == 1) {

   return ((void*)0);
  }

  if (!memcmp(&box_type, jp2c_box_id, 4))
  {

   php_stream_seek(stream, 3, SEEK_CUR);

   result = php_handle_jpc(stream);
   break;
  }


  if ((int)box_length <= 0) {
   break;
  }


  if (php_stream_seek(stream, box_length - 8, SEEK_CUR)) {
   break;
  }
 }

 if (result == ((void*)0)) {
  php_error_docref(((void*)0), E_WARNING, "JP2 file has no codestreams at root level");
 }

 return result;
}
