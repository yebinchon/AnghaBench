
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int values; } ;
typedef TYPE_1__ RCFValueArray ;
typedef int RCFValue ;


 int r_list_push (int ,int *) ;

__attribute__((used)) static void r_cf_value_array_add(RCFValueArray *array, RCFValue *value) {
 if (!array || !array->values) {
  return;
 }

 r_list_push (array->values, value);
}
