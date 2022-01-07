
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_string ;
struct TYPE_4__ {scalar_t__ custom_error_message; int code; } ;
typedef TYPE_1__ intl_error ;


 int * ZSTR_EMPTY_ALLOC () ;
 TYPE_1__* intl_g_error_get () ;
 int * strpprintf (int ,char*,char const*,...) ;
 char* u_errorName (int ) ;

zend_string * intl_error_get_message( intl_error* err )
{
 const char *uErrorName = ((void*)0);
 zend_string *errMessage = 0;

 if( !err && !( err = intl_g_error_get( ) ) )
  return ZSTR_EMPTY_ALLOC();

 uErrorName = u_errorName( err->code );


 if( err->custom_error_message )
 {
  errMessage = strpprintf(0, "%s: %s", err->custom_error_message, uErrorName );
 }
 else
 {
  errMessage = strpprintf(0, "%s", uErrorName );
 }

 return errMessage;
}
