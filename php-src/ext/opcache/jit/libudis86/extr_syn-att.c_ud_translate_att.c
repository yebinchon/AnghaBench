
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ud {int dis_mode; int mnemonic; TYPE_3__* operand; int br_far; scalar_t__ pfx_repne; scalar_t__ pfx_repe; scalar_t__ pfx_rep; scalar_t__ pfx_lock; scalar_t__ pfx_adr; TYPE_1__* itab_entry; scalar_t__ pfx_opr; } ;
struct TYPE_5__ {int ubyte; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_2__ lval; } ;
struct TYPE_4__ {int prefix; } ;


 int P_ASO (int ) ;
 int P_OSO (int ) ;






 scalar_t__ UD_NONE ;
 scalar_t__ UD_OP_REG ;
 int gen_operand (struct ud*,TYPE_3__*) ;
 int ud_asmprintf (struct ud*,char*,...) ;
 int ud_lookup_mnemonic (int) ;

extern void
ud_translate_att(struct ud *u)
{
  int size = 0;
  int star = 0;


  if (! P_OSO(u->itab_entry->prefix) && u->pfx_opr) {
  switch (u->dis_mode) {
    case 16:
      ud_asmprintf(u, "o32 ");
      break;
    case 32:
    case 64:
      ud_asmprintf(u, "o16 ");
      break;
  }
  }


  if (! P_ASO(u->itab_entry->prefix) && u->pfx_adr) {
  switch (u->dis_mode) {
    case 16:
      ud_asmprintf(u, "a32 ");
      break;
    case 32:
      ud_asmprintf(u, "a16 ");
      break;
    case 64:
      ud_asmprintf(u, "a32 ");
      break;
  }
  }

  if (u->pfx_lock)
    ud_asmprintf(u, "lock ");
  if (u->pfx_rep) {
    ud_asmprintf(u, "rep ");
  } else if (u->pfx_repe) {
    ud_asmprintf(u, "repe ");
  } else if (u->pfx_repne) {
    ud_asmprintf(u, "repne ");
  }


  switch (u->mnemonic) {
  case 128:
    ud_asmprintf(u, "lret ");
    break;
  case 131:
    ud_asmprintf(u, ".byte 0x%x", u->operand[0].lval.ubyte);
    return;
  case 129:
  case 132:
    if (u->br_far) ud_asmprintf(u, "l");
        if (u->operand[0].type == UD_OP_REG) {
          star = 1;
        }
    ud_asmprintf(u, "%s", ud_lookup_mnemonic(u->mnemonic));
    break;
  case 133:
  case 130:
    if (u->operand[0].type != UD_NONE)
      gen_operand(u, &u->operand[0]);
    if (u->operand[1].type != UD_NONE) {
      ud_asmprintf(u, ",");
      gen_operand(u, &u->operand[1]);
    }
    return;
  default:
    ud_asmprintf(u, "%s", ud_lookup_mnemonic(u->mnemonic));
  }

  if (size == 8) {
    ud_asmprintf(u, "b");
  } else if (size == 16) {
    ud_asmprintf(u, "w");
  } else if (size == 64) {
    ud_asmprintf(u, "q");
  }

  if (star) {
    ud_asmprintf(u, " *");
  } else {
    ud_asmprintf(u, " ");
  }

  if (u->operand[3].type != UD_NONE) {
    gen_operand(u, &u->operand[3]);
    ud_asmprintf(u, ", ");
  }
  if (u->operand[2].type != UD_NONE) {
    gen_operand(u, &u->operand[2]);
    ud_asmprintf(u, ", ");
  }
  if (u->operand[1].type != UD_NONE) {
    gen_operand(u, &u->operand[1]);
    ud_asmprintf(u, ", ");
  }
  if (u->operand[0].type != UD_NONE) {
    gen_operand(u, &u->operand[0]);
  }
}
