
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pairs; } ;
typedef TYPE_1__ RCFValueDict ;
typedef int RCFKeyValue ;


 int r_list_push (int ,int *) ;

__attribute__((used)) static void r_cf_value_dict_add(RCFValueDict *dict, RCFKeyValue *key_value) {
 if (!dict || !dict->pairs) {
  return;
 }

 r_list_push (dict->pairs, key_value);
}
