
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; int * udatf; } ;
typedef TYPE_1__ dateformat_data ;


 int intl_error_reset (int *) ;
 int udat_close (int *) ;

void dateformat_data_free( dateformat_data* datef_data )
{
 if( !datef_data )
  return;

 if( datef_data->udatf )
  udat_close( datef_data->udatf );

 datef_data->udatf = ((void*)0);
 intl_error_reset( &datef_data->error );
}
