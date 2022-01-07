
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int * pairs; } ;
typedef TYPE_1__ RCFValueDict ;


 int R_CF_INVALID ;
 int R_FREE (TYPE_1__*) ;
 int r_list_free (int *) ;
 int r_return_if_fail (TYPE_1__*) ;

void r_cf_value_dict_free (RCFValueDict *dict) {
 r_return_if_fail (dict);

 if (dict->pairs) {
  r_list_free (dict->pairs);
  dict->pairs = ((void*)0);
 }
 dict->type = R_CF_INVALID;
 R_FREE (dict);
}
