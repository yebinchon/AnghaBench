
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ RCFValueBool ;


 int R_CF_INVALID ;
 int R_FREE (TYPE_1__*) ;

__attribute__((used)) static void r_cf_value_bool_free(RCFValueBool *bool_value) {
 if (bool_value) {
  bool_value->type = R_CF_INVALID;
  R_FREE (bool_value);
 }
}
