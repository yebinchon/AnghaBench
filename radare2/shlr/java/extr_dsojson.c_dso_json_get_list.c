
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* _dict; TYPE_2__* _list; } ;
struct TYPE_11__ {TYPE_4__ val; TYPE_1__* info; } ;
struct TYPE_9__ {int * json_dict; } ;
struct TYPE_8__ {int * json_list; } ;
struct TYPE_7__ {int type; } ;
typedef int RList ;
typedef TYPE_5__ DsoJsonObj ;





__attribute__((used)) static RList * dso_json_get_list (DsoJsonObj *dso_obj) {
 RList *the_list = ((void*)0);
 if (dso_obj) {
  switch (dso_obj->info->type) {
  case 128: the_list = dso_obj->val._list->json_list; break;
  case 129: the_list = dso_obj->val._dict->json_dict; break;
  default: break;
  }
 }
 return the_list;
}
