
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int json_list; } ;
struct TYPE_7__ {TYPE_5__* _list; } ;
struct TYPE_8__ {TYPE_1__ val; int info; } ;
typedef int RListFree ;
typedef TYPE_2__ DsoJsonObj ;
typedef int DsoJsonList ;


 int DSO_JSON_LIST ;
 int R_FREE (TYPE_2__*) ;
 TYPE_5__* calloc (int,int) ;
 TYPE_2__* dso_json_null_new () ;
 scalar_t__ dso_json_obj_del ;
 int get_type_info (int ) ;
 int r_list_newf (int ) ;

DsoJsonObj * dso_json_list_new () {
 DsoJsonObj *x = dso_json_null_new ();
 if (x) {
  x->info = get_type_info (DSO_JSON_LIST);
  x->val._list = calloc (sizeof (DsoJsonList), 1);
  if (x->val._list) {
   x->val._list->json_list = r_list_newf ((RListFree)dso_json_obj_del);
  } else {
   R_FREE (x);
  }
 }
 return x;
}
