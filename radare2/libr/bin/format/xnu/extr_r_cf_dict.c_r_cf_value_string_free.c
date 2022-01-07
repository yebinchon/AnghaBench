
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; struct TYPE_4__* value; } ;
typedef TYPE_1__ RCFValueString ;


 int R_CF_INVALID ;
 int R_FREE (TYPE_1__*) ;

__attribute__((used)) static void r_cf_value_string_free(RCFValueString *string) {
 if (!string) {
  return;
 }

 if (string->value) {
  R_FREE (string->value);
 }

 string->type = R_CF_INVALID;
 R_FREE (string);
}
