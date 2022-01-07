
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intl_error ;


 int intl_error_set_custom_msg (int *,char const*,int) ;

void intl_errors_set_custom_msg( intl_error* err, const char* msg, int copyMsg )
{
 if(err) {
  intl_error_set_custom_msg( err, msg, copyMsg );
 }
 intl_error_set_custom_msg( ((void*)0), msg, copyMsg );
}
