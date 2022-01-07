
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ HRESULT ;


 int php_com_exception_class_entry ;
 int php_win32_error_msg_free (char*) ;
 char* php_win32_error_to_msg (scalar_t__) ;
 int zend_throw_exception (int ,char*,int ) ;

void php_com_throw_exception(HRESULT code, char *message)
{
 int free_msg = 0;
 if (message == ((void*)0)) {
  message = php_win32_error_to_msg(code);
  free_msg = 1;
 }



 zend_throw_exception(php_com_exception_class_entry, message, (zend_long)code);

 if (free_msg) {
  php_win32_error_msg_free(message);
 }
}
