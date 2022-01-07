
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__** arg; } ;
typedef TYPE_1__ RAnalReilInst ;


 int R_FREE (TYPE_1__*) ;

void reil_free_inst(RAnalReilInst *ins) {
 if (!ins) {
  return;
 }
 if (ins->arg[0]) { R_FREE (ins->arg[0]); }
 if (ins->arg[1]) { R_FREE (ins->arg[1]); }
 if (ins->arg[2]) { R_FREE (ins->arg[2]); }
 R_FREE(ins);
}
