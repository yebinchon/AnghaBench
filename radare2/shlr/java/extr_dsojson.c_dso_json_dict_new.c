
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int json_dict; } ;
struct TYPE_7__ {TYPE_6__* _dict; } ;
struct TYPE_8__ {TYPE_1__ val; int info; } ;
typedef int RListFree ;
typedef TYPE_2__ DsoJsonObj ;
typedef int DsoJsonDict ;


 int DSO_JSON_DICT ;
 TYPE_6__* calloc (int,int) ;
 int dso_json_null_free (TYPE_2__*) ;
 TYPE_2__* dso_json_null_new () ;
 scalar_t__ dso_json_obj_del ;
 int get_type_info (int ) ;
 int r_list_newf (int ) ;

DsoJsonObj * dso_json_dict_new () {
 DsoJsonObj *x = dso_json_null_new ();
 if (x) {
  x->info = get_type_info (DSO_JSON_DICT);
  x->val._dict = calloc (sizeof (DsoJsonDict), 1);
  if (!x->val._dict) {
   dso_json_null_free (x);
   return ((void*)0);
  }
  x->val._dict->json_dict = r_list_newf ((RListFree)dso_json_obj_del);
 }
 return x;
}
