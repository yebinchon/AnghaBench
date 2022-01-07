
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* _list; } ;
struct TYPE_7__ {TYPE_2__ val; } ;
struct TYPE_5__ {int * json_list; } ;
typedef TYPE_3__ DsoJsonObj ;


 int r_list_free (int *) ;

void dso_json_list_free (DsoJsonObj *x) {
 if (!x) return;
 if (x->val._list && x->val._list->json_list) {
  r_list_free (x->val._list->json_list);
  x->val._list->json_list = ((void*)0);
 }
}
