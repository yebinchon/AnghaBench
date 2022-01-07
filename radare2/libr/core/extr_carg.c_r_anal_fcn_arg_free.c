
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* orig_c_type; } ;
typedef TYPE_1__ RAnalFuncArg ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void r_anal_fcn_arg_free(RAnalFuncArg *arg) {
 if (!arg) {
  return;
 }
 free (arg->orig_c_type);
 free (arg);
}
