
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int free_custom_error_message; char* custom_error_message; } ;
typedef TYPE_1__ intl_error ;


 scalar_t__ INTL_G (int ) ;
 int IntlException_ce_ptr ;
 int error_level ;
 char* estrdup (char const*) ;
 int intl_free_custom_error_msg (TYPE_1__*) ;
 TYPE_1__* intl_g_error_get () ;
 int php_error_docref (int *,scalar_t__,char*,char const*) ;
 int use_exceptions ;
 int zend_throw_exception_ex (int ,int ,char*,char const*) ;

void intl_error_set_custom_msg( intl_error* err, const char* msg, int copyMsg )
{
 if( !msg )
  return;

 if( !err ) {
  if( INTL_G( error_level ) )
   php_error_docref( ((void*)0), INTL_G( error_level ), "%s", msg );
  if( INTL_G( use_exceptions ) )
   zend_throw_exception_ex( IntlException_ce_ptr, 0, "%s", msg );
 }
 if( !err && !( err = intl_g_error_get( ) ) )
  return;


 intl_free_custom_error_msg( err );


 err->free_custom_error_message = copyMsg;


 err->custom_error_message = copyMsg ? estrdup( msg ) : (char *) msg;
}
