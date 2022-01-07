
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_file_handle ;
typedef int FILE ;


 int FAILURE ;
 int SUCCESS ;
 int * VCWD_FOPEN (char*,char*) ;
 int php_printf (char*,char*) ;
 int zend_stream_init_fp (int *,int *,char*) ;

__attribute__((used)) static int cli_seek_file_begin(zend_file_handle *file_handle, char *script_file)
{
 FILE *fp = VCWD_FOPEN(script_file, "rb");
 if (!fp) {
  php_printf("Could not open input file: %s\n", script_file);
  return FAILURE;
 }

 zend_stream_init_fp(file_handle, fp, script_file);
 return SUCCESS;
}
