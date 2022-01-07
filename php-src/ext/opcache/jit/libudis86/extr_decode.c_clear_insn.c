
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ud {TYPE_1__* operand; scalar_t__ _rex; scalar_t__ vex_op; scalar_t__ br_far; scalar_t__ have_modrm; int * itab_entry; int mnemonic; scalar_t__ pfx_str; scalar_t__ pfx_rex; scalar_t__ pfx_repe; scalar_t__ pfx_rep; scalar_t__ pfx_repne; scalar_t__ pfx_lock; scalar_t__ pfx_adr; scalar_t__ pfx_opr; scalar_t__ pfx_seg; scalar_t__ error; } ;
struct TYPE_2__ {void* type; } ;


 int UD_Inone ;
 void* UD_NONE ;

__attribute__((used)) static void
clear_insn(register struct ud* u)
{
  u->error = 0;
  u->pfx_seg = 0;
  u->pfx_opr = 0;
  u->pfx_adr = 0;
  u->pfx_lock = 0;
  u->pfx_repne = 0;
  u->pfx_rep = 0;
  u->pfx_repe = 0;
  u->pfx_rex = 0;
  u->pfx_str = 0;
  u->mnemonic = UD_Inone;
  u->itab_entry = ((void*)0);
  u->have_modrm = 0;
  u->br_far = 0;
  u->vex_op = 0;
  u->_rex = 0;
  u->operand[0].type = UD_NONE;
  u->operand[1].type = UD_NONE;
  u->operand[2].type = UD_NONE;
  u->operand[3].type = UD_NONE;
}
