
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; int * unum; } ;
typedef TYPE_1__ formatter_data ;


 int intl_error_reset (int *) ;

void formatter_data_init( formatter_data* nf_data )
{
 if( !nf_data )
  return;

 nf_data->unum = ((void*)0);
 intl_error_reset( &nf_data->error );
}
