
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anal; } ;
typedef int RList ;
typedef TYPE_1__ RCore ;
typedef int RAnalFunction ;


 int * r_anal_types_from_fcn (int ,int *) ;
 int r_list_free (int *) ;
 int r_sign_add_types (int ,char const*,int *) ;

__attribute__((used)) static bool addFcnTypes(RCore *core, RAnalFunction *fcn, const char *name) {
 RList *types = r_anal_types_from_fcn (core->anal, fcn);
 if (!types) {
  return 0;
 }
 bool retval = r_sign_add_types (core->anal, name, types);
 r_list_free (types);
 return retval;
}
