
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* _dict_entry; int * _str; } ;
struct TYPE_9__ {TYPE_3__ val; TYPE_1__* info; } ;
struct TYPE_7__ {TYPE_4__* key; } ;
struct TYPE_6__ {int type; } ;
typedef int DsoJsonStr ;
typedef TYPE_4__ DsoJsonObj ;





__attribute__((used)) static DsoJsonStr * dso_json_get_str (DsoJsonObj *dso_obj) {
 DsoJsonStr * str = ((void*)0);
 if (dso_obj) {
  switch (dso_obj->info->type) {
  case 128: str = dso_obj->val._str; break;
  case 129: str = dso_json_get_str (dso_obj->val._dict_entry->key); break;
  default: break;
  }
 }
 return str;
}
