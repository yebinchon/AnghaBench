
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intl_error ;
typedef int UErrorCode ;


 int intl_error_set_code (int *,int ) ;
 int intl_error_set_custom_msg (int *,char const*,int) ;

void intl_error_set( intl_error* err, UErrorCode code, const char* msg, int copyMsg )
{
 intl_error_set_code( err, code );
 intl_error_set_custom_msg( err, msg, copyMsg );
}
