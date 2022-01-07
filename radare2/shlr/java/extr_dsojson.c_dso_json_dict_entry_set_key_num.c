
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int st64 ;
struct TYPE_2__ {int * key; } ;
typedef int DsoJsonObj ;
typedef TYPE_1__ DsoJsonDictEntry ;


 scalar_t__ dso_json_is_dict_entry (int *) ;
 int * dso_json_num_new_from_num (int ) ;
 int dso_json_obj_del (int *) ;

int dso_json_dict_entry_set_key_num (DsoJsonObj * entry_obj, st64 num) {
 int res = 0;
 if (dso_json_is_dict_entry (entry_obj)) {
  DsoJsonDictEntry *entry = (DsoJsonDictEntry *)entry_obj;
  DsoJsonObj *o_key = dso_json_num_new_from_num (num);
  if (entry->key) {
   dso_json_obj_del (entry->key);
  }
  entry->key = o_key;
  res = 1;
 }
 return res;
}
