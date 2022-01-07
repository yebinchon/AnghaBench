
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
 int r_sign_add_refs (int ,char const*,int *) ;
 int * r_sign_fcn_refs (int ,int *) ;

__attribute__((used)) static bool addFcnRefs(RCore *core, RAnalFunction *fcn, const char *name) {
 RList *refs = r_sign_fcn_refs (core->anal, fcn);
 if (!refs) {
  return 0;
 }
 bool retval = r_sign_add_refs (core->anal, name, refs);
 r_list_free (refs);
 return retval;
}
