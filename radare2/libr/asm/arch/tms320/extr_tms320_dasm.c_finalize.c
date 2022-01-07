
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * insn; int syntax; } ;
typedef TYPE_1__ tms320_dasm_t ;
typedef int insn_item_t ;


 scalar_t__ field_value (TYPE_1__*,int ) ;
 int q_cr ;
 int q_lr ;
 int replace (int ,char*,char*) ;
 int substitute (int ,char*,char*,char*) ;

__attribute__((used)) static insn_item_t * finalize(tms320_dasm_t * dasm)
{


 substitute(dasm->syntax, "  ", "%s", " ");



 if (field_value (dasm, q_lr)) {
  replace (dasm->syntax, " ", ".lr ");
 }
 if (field_value (dasm, q_cr)) {
  replace (dasm->syntax, " ", ".cr ");
 }

 return dasm->insn;
}
