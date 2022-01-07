
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * value; struct TYPE_4__* key; } ;
typedef TYPE_1__ RCFKeyValue ;


 int R_FREE (TYPE_1__*) ;
 int r_cf_value_free (int *) ;

__attribute__((used)) static void r_cf_key_value_free(RCFKeyValue *key_value) {
 if (!key_value) {
  return;
 }

 if (key_value->key) {
  R_FREE (key_value->key);
 }
 if (key_value->value) {
  r_cf_value_free (key_value->value);
  key_value->value = ((void*)0);
 }

 R_FREE (key_value);
}
