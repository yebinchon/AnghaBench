
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uqword; int udword; int uword; int ubyte; } ;
struct ud_operand {int offset; TYPE_1__ lval; } ;
struct ud {int dummy; } ;


 int inp_uint16 (struct ud*) ;
 int inp_uint32 (struct ud*) ;
 int inp_uint64 (struct ud*) ;
 int inp_uint8 (struct ud*) ;

__attribute__((used)) static void
decode_mem_disp(struct ud* u, unsigned int size, struct ud_operand *op)
{
  switch (size) {
  case 8:
    op->offset = 8;
    op->lval.ubyte = inp_uint8(u);
    break;
  case 16:
    op->offset = 16;
    op->lval.uword = inp_uint16(u);
    break;
  case 32:
    op->offset = 32;
    op->lval.udword = inp_uint32(u);
    break;
  case 64:
    op->offset = 64;
    op->lval.uqword = inp_uint64(u);
    break;
  default:
      return;
  }
}
