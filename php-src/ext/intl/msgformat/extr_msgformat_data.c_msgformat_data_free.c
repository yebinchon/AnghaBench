
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; int * umsgf; int * arg_types; int * orig_format; } ;
typedef TYPE_1__ msgformat_data ;


 int efree (int *) ;
 int intl_error_reset (int *) ;
 int umsg_close (int *) ;
 int zend_hash_destroy (int *) ;

void msgformat_data_free(msgformat_data* mf_data)
{
 if (!mf_data)
  return;

 if (mf_data->umsgf)
  umsg_close(mf_data->umsgf);

 if (mf_data->orig_format) {
  efree(mf_data->orig_format);
  mf_data->orig_format = ((void*)0);
 }

 if (mf_data->arg_types) {
  zend_hash_destroy(mf_data->arg_types);
  efree(mf_data->arg_types);
  mf_data->arg_types = ((void*)0);
 }

 mf_data->umsgf = ((void*)0);
 intl_error_reset(&mf_data->error);
}
