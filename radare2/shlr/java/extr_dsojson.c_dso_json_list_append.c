
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int json_list; } ;
struct TYPE_8__ {TYPE_3__* _list; } ;
struct TYPE_9__ {TYPE_1__ val; } ;
typedef TYPE_2__ DsoJsonObj ;
typedef TYPE_3__ DsoJsonList ;


 scalar_t__ DSO_JSON_LIST ;
 scalar_t__ get_type (TYPE_2__*) ;
 int r_list_append (int ,TYPE_2__*) ;

int dso_json_list_append (DsoJsonObj *list_obj, DsoJsonObj *y) {
 if (get_type (list_obj) == DSO_JSON_LIST) {
  DsoJsonList * list = list_obj->val._list;
  r_list_append (list->json_list, y);
  return 1;
 }
 return 0;
}
