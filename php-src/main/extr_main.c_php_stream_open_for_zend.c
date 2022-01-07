
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_file_handle ;


 int REPORT_ERRORS ;
 int STREAM_OPEN_FOR_INCLUDE ;
 int USE_PATH ;
 int php_stream_open_for_zend_ex (char const*,int *,int) ;

__attribute__((used)) static int php_stream_open_for_zend(const char *filename, zend_file_handle *handle)
{
 return php_stream_open_for_zend_ex(filename, handle, USE_PATH|REPORT_ERRORS|STREAM_OPEN_FOR_INCLUDE);
}
