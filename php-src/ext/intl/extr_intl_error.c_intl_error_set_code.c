
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int code; } ;
typedef TYPE_1__ intl_error ;
typedef int UErrorCode ;


 TYPE_1__* intl_g_error_get () ;

void intl_error_set_code( intl_error* err, UErrorCode err_code )
{
 if( !err && !( err = intl_g_error_get( ) ) )
  return;

 err->code = err_code;
}
