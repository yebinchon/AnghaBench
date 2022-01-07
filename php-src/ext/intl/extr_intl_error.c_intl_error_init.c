
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ free_custom_error_message; int * custom_error_message; int code; } ;
typedef TYPE_1__ intl_error ;


 int U_ZERO_ERROR ;
 TYPE_1__* intl_g_error_get () ;

void intl_error_init( intl_error* err )
{
 if( !err && !( err = intl_g_error_get( ) ) )
  return;

 err->code = U_ZERO_ERROR;
 err->custom_error_message = ((void*)0);
 err->free_custom_error_message = 0;
}
