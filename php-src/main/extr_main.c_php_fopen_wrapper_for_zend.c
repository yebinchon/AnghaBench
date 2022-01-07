
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int FILE ;


 int IGNORE_URL_WIN ;
 int REPORT_ERRORS ;
 int STREAM_OPEN_FOR_INCLUDE ;
 int USE_PATH ;
 int * php_stream_open_wrapper_as_file (char*,char*,int,int **) ;

__attribute__((used)) static FILE *php_fopen_wrapper_for_zend(const char *filename, zend_string **opened_path)
{
 return php_stream_open_wrapper_as_file((char *)filename, "rb", USE_PATH|IGNORE_URL_WIN|REPORT_ERRORS|STREAM_OPEN_FOR_INCLUDE, opened_path);
}
