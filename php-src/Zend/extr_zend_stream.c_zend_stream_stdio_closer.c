
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * stdin ;

__attribute__((used)) static void zend_stream_stdio_closer(void *handle)
{
 if (handle && (FILE*)handle != stdin) {
  fclose((FILE*)handle);
 }
}
