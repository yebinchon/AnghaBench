
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; scalar_t__ tz_set; int * arg_types; int * orig_format; int * umsgf; } ;
typedef TYPE_1__ msgformat_data ;


 int intl_error_reset (int *) ;

void msgformat_data_init( msgformat_data* mf_data )
{
 if( !mf_data )
  return;

 mf_data->umsgf = ((void*)0);
 mf_data->orig_format = ((void*)0);
 mf_data->arg_types = ((void*)0);
 mf_data->tz_set = 0;
 intl_error_reset( &mf_data->error );
}
