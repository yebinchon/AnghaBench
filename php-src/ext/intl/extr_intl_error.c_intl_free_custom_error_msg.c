
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ free_custom_error_message; int * custom_error_message; } ;
typedef TYPE_1__ intl_error ;


 int efree (int *) ;
 TYPE_1__* intl_g_error_get () ;

__attribute__((used)) static void intl_free_custom_error_msg( intl_error* err )
{
 if( !err && !( err = intl_g_error_get( ) ) )
  return;

 if(err->free_custom_error_message ) {
  efree( err->custom_error_message );
 }

 err->custom_error_message = ((void*)0);
 err->free_custom_error_message = 0;
}
