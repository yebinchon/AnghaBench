
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anal; } ;
typedef int RList ;
typedef TYPE_1__ RCore ;
typedef int RAnalFunction ;


 int r_list_free (int *) ;
 int r_sign_add_xrefs (int ,char const*,int *) ;
 int * r_sign_fcn_xrefs (int ,int *) ;

__attribute__((used)) static bool addFcnXRefs(RCore *core, RAnalFunction *fcn, const char *name) {
 bool retval = 0;
 RList *xrefs = r_sign_fcn_xrefs (core->anal, fcn);
 if (xrefs) {
  retval = r_sign_add_xrefs (core->anal, name, xrefs);
  r_list_free (xrefs);
 }
 return retval;
}
