
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAILURE ;
 char* PHP_ZLIB_OUTPUT_HANDLER_NAME ;
 int SUCCESS ;
 int ZEND_STRL (char*) ;
 scalar_t__ php_output_get_level () ;
 scalar_t__ php_output_handler_conflict (char const*,size_t,int ) ;

__attribute__((used)) static int php_zlib_output_conflict_check(const char *handler_name, size_t handler_name_len)
{
 if (php_output_get_level() > 0) {
  if (php_output_handler_conflict(handler_name, handler_name_len, ZEND_STRL(PHP_ZLIB_OUTPUT_HANDLER_NAME))
  || php_output_handler_conflict(handler_name, handler_name_len, ZEND_STRL("ob_gzhandler"))
  || php_output_handler_conflict(handler_name, handler_name_len, ZEND_STRL("mb_output_handler"))
  || php_output_handler_conflict(handler_name, handler_name_len, ZEND_STRL("URL-Rewriter"))) {
   return FAILURE;
  }
 }
 return SUCCESS;
}
