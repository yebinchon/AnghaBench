
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int php_stream ;


 int EOF ;
 int E_WARNING ;
 unsigned int M_EOI ;
 int php_error_docref (int *,int ,char*,size_t) ;
 int php_stream_getc (int *) ;

__attribute__((used)) static unsigned int php_next_marker(php_stream * stream, int last_marker, int ff_read)
{
 int a=0, marker;


 if (!ff_read) {
  size_t extraneous = 0;

  while ((marker = php_stream_getc(stream)) != 0xff) {
   if (marker == EOF) {
    return M_EOI;
 }
   extraneous++;
 }
  if (extraneous) {
   php_error_docref(((void*)0), E_WARNING, "corrupt JPEG data: %zu extraneous bytes before marker", extraneous);
  }
 }
 a = 1;
 do {
  if ((marker = php_stream_getc(stream)) == EOF)
  {
   return M_EOI;
  }
  a++;
 } while (marker == 0xff);
 if (a < 2)
 {
  return M_EOI;
 }
 return (unsigned int)marker;
}
