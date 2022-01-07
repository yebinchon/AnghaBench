
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int * values; } ;
typedef TYPE_1__ RCFValueArray ;


 int R_CF_INVALID ;
 int R_FREE (TYPE_1__*) ;
 int r_list_free (int *) ;

__attribute__((used)) static void r_cf_value_array_free(RCFValueArray *array) {
 if (!array) {
  return;
 }

 if (array->values) {
  r_list_free (array->values);
  array->values = ((void*)0);
 }

 array->type = R_CF_INVALID;
 R_FREE (array);
}
