
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int _dict_entry; int _dict; int _list; int _str; int _num; } ;
struct TYPE_7__ {TYPE_2__ val; TYPE_1__* info; } ;
struct TYPE_5__ {int type; } ;
typedef TYPE_3__ DsoJsonObj ;
 char* dso_json_dict_entry_to_str (int ) ;
 char* dso_json_dict_to_str (int ) ;
 char* dso_json_list_to_str (int ) ;
 char* dso_json_num_to_str (int ) ;
 char* dso_json_str_to_str (int ) ;
 char* strdup (char*) ;

char * dso_json_obj_to_str (DsoJsonObj * dso_obj) {
 if (dso_obj && dso_obj->info) {
  switch (dso_obj->info->type) {
  case 130: return strdup ("null");
  case 129: return dso_json_num_to_str (dso_obj->val._num);
  case 128: return dso_json_str_to_str (dso_obj->val._str);
  case 131: return dso_json_list_to_str (dso_obj->val._list);
  case 133: return dso_json_dict_to_str (dso_obj->val._dict);
  case 132: return dso_json_dict_entry_to_str (dso_obj->val._dict_entry);
  }
 }
 return ((void*)0);
}
