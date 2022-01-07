
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * json_dict; } ;
typedef TYPE_1__ DsoJsonDict ;


 int free (TYPE_1__*) ;
 int r_list_free (int *) ;

void dso_json_dict_free (void *y) {
 DsoJsonDict *x = (DsoJsonDict *)y;
 if (x && x->json_dict) {
  r_list_free (x->json_dict);
  x->json_dict = ((void*)0);
 }
 free (x);
}
