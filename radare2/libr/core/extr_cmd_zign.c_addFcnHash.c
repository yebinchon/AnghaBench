
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int anal; } ;
typedef TYPE_1__ RCore ;
typedef int RAnalFunction ;


 int r_return_val_if_fail (int ,int) ;
 int r_sign_add_bb_hash (int ,int *,char const*) ;

__attribute__((used)) static bool addFcnHash(RCore *core, RAnalFunction *fcn, const char *name) {
 r_return_val_if_fail (core && fcn && name, 0);
 return r_sign_add_bb_hash (core->anal, fcn, name);
}
