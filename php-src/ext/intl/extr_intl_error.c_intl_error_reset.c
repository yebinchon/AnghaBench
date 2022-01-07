
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int code; } ;
typedef TYPE_1__ intl_error ;


 int U_ZERO_ERROR ;
 int intl_free_custom_error_msg (TYPE_1__*) ;
 TYPE_1__* intl_g_error_get () ;

void intl_error_reset( intl_error* err )
{
 if( !err && !( err = intl_g_error_get( ) ) )
  return;

 err->code = U_ZERO_ERROR;

 intl_free_custom_error_msg( err );
}
