
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ DsoJsonStr ;


 int R_FREE (int ) ;
 int free (TYPE_1__*) ;

void dso_json_str_free (void *y) {
 DsoJsonStr *x = (DsoJsonStr *)y;
 if (x) {
  R_FREE (x->data);
  free (x);
 }
}
