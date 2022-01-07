
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * value; int type; } ;
typedef TYPE_1__ RCFValueData ;


 int R_CF_INVALID ;
 int R_FREE (TYPE_1__*) ;
 int r_buf_free (int *) ;

__attribute__((used)) static void r_cf_value_data_free(RCFValueData *data) {
 if (!data) {
  return;
 }

 data->type = R_CF_INVALID;
 if (data->value) {
  r_buf_free (data->value);
  data->value = ((void*)0);
 }

 R_FREE (data);
}
