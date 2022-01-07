
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uqword; int udword; int uword; int sbyte; } ;
struct ud_operand {int size; TYPE_1__ lval; int type; } ;
struct ud {int dummy; } ;


 int UD_OP_IMM ;
 int inp_uint16 (struct ud*) ;
 int inp_uint32 (struct ud*) ;
 int inp_uint64 (struct ud*) ;
 int inp_uint8 (struct ud*) ;
 int resolve_operand_size (struct ud*,unsigned int) ;

__attribute__((used)) static void
decode_imm(struct ud* u, unsigned int size, struct ud_operand *op)
{
  op->size = resolve_operand_size(u, size);
  op->type = UD_OP_IMM;

  switch (op->size) {
  case 8: op->lval.sbyte = inp_uint8(u); break;
  case 16: op->lval.uword = inp_uint16(u); break;
  case 32: op->lval.udword = inp_uint32(u); break;
  case 64: op->lval.uqword = inp_uint64(u); break;
  default: return;
  }
}
