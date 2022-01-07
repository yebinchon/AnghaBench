
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mrb_insn_data {int insn; } ;
struct TYPE_3__ {size_t pc; size_t lastpc; int * iseq; } ;
typedef TYPE_1__ codegen_scope ;


 int OP_NOP ;
 struct mrb_insn_data mrb_decode_insn (int *) ;

__attribute__((used)) static struct mrb_insn_data
mrb_last_insn(codegen_scope *s)
{
  if (s->pc == s->lastpc) {
    struct mrb_insn_data data;

    data.insn = OP_NOP;
    return data;
  }
  return mrb_decode_insn(&s->iseq[s->lastpc]);
}
