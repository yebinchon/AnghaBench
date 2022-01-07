
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ json_dict; } ;
typedef TYPE_1__ DsoJsonDict ;


 char* build_str_from_str_list_for_iterable (scalar_t__,int ) ;
 char* strdup (char*) ;

char * dso_json_dict_to_str (DsoJsonDict *dict) {
 if (dict && dict->json_dict) {
  return build_str_from_str_list_for_iterable (dict->json_dict, 0);
 }
 return strdup ("{}");
}
