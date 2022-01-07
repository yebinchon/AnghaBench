
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ud {int dis_mode; size_t pfx_seg; int mnemonic; TYPE_2__* operand; scalar_t__ pfx_repne; scalar_t__ pfx_repe; scalar_t__ pfx_rep; scalar_t__ pfx_lock; scalar_t__ pfx_adr; TYPE_1__* itab_entry; scalar_t__ pfx_opr; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ size; scalar_t__ base; } ;
struct TYPE_4__ {int prefix; } ;


 int P_ASO (int ) ;
 int P_OSO (int ) ;







 scalar_t__ UD_NONE ;
 scalar_t__ UD_OP_CONST ;
 scalar_t__ UD_OP_IMM ;
 scalar_t__ UD_OP_MEM ;
 scalar_t__ UD_OP_REG ;
 size_t UD_R_AL ;
 scalar_t__ UD_R_CL ;
 int gen_operand (struct ud*,TYPE_2__*,int) ;
 int ud_asmprintf (struct ud*,char*,...) ;
 int ud_lookup_mnemonic (int) ;
 int ud_opr_is_sreg (TYPE_2__*) ;
 int * ud_reg_tab ;

extern void
ud_translate_intel(struct ud* u)
{

  if (!P_OSO(u->itab_entry->prefix) && u->pfx_opr) {
    switch (u->dis_mode) {
    case 16: ud_asmprintf(u, "o32 "); break;
    case 32:
    case 64: ud_asmprintf(u, "o16 "); break;
    }
  }


  if (!P_ASO(u->itab_entry->prefix) && u->pfx_adr) {
    switch (u->dis_mode) {
    case 16: ud_asmprintf(u, "a32 "); break;
    case 32: ud_asmprintf(u, "a16 "); break;
    case 64: ud_asmprintf(u, "a32 "); break;
    }
  }

  if (u->pfx_seg &&
      u->operand[0].type != UD_OP_MEM &&
      u->operand[1].type != UD_OP_MEM ) {
    ud_asmprintf(u, "%s ", ud_reg_tab[u->pfx_seg - UD_R_AL]);
  }

  if (u->pfx_lock) {
    ud_asmprintf(u, "lock ");
  }
  if (u->pfx_rep) {
    ud_asmprintf(u, "rep ");
  } else if (u->pfx_repe) {
    ud_asmprintf(u, "repe ");
  } else if (u->pfx_repne) {
    ud_asmprintf(u, "repne ");
  }


  ud_asmprintf(u, "%s", ud_lookup_mnemonic(u->mnemonic));

  if (u->operand[0].type != UD_NONE) {
    int cast = 0;
    ud_asmprintf(u, " ");
    if (u->operand[0].type == UD_OP_MEM) {
      if (u->operand[1].type == UD_OP_IMM ||
          u->operand[1].type == UD_OP_CONST ||
          u->operand[1].type == UD_NONE ||
          (u->operand[0].size != u->operand[1].size)) {
          cast = 1;
      } else if (u->operand[1].type == UD_OP_REG &&
                 u->operand[1].base == UD_R_CL) {
          switch (u->mnemonic) {
          case 134:
          case 132:
          case 131:
          case 133:
          case 129:
          case 128:
          case 130:
              cast = 1;
              break;
          default: break;
          }
      }
    }
    gen_operand(u, &u->operand[0], cast);
  }

  if (u->operand[1].type != UD_NONE) {
    int cast = 0;
    ud_asmprintf(u, ", ");
    if (u->operand[1].type == UD_OP_MEM &&
        u->operand[0].size != u->operand[1].size &&
        !ud_opr_is_sreg(&u->operand[0])) {
      cast = 1;
    }
    gen_operand(u, &u->operand[1], cast);
  }

  if (u->operand[2].type != UD_NONE) {
    int cast = 0;
    ud_asmprintf(u, ", ");
    if (u->operand[2].type == UD_OP_MEM &&
        u->operand[2].size != u->operand[1].size) {
      cast = 1;
    }
    gen_operand(u, &u->operand[2], cast);
  }

  if (u->operand[3].type != UD_NONE) {
    ud_asmprintf(u, ", ");
    gen_operand(u, &u->operand[3], 0);
  }
}
