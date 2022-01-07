
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud_operand {int base; int size; int type; } ;
struct ud {int dummy; } ;
 int SZ_QQ ;
 int UDERR (struct ud*,char*) ;
 int UD_ASSERT (int) ;
 int UD_OP_REG ;
 int UD_R_CR0 ;
 int UD_R_DR0 ;
 int UD_R_ES ;
 int UD_R_MM0 ;
 int UD_R_XMM0 ;
 int UD_R_YMM0 ;
 int decode_gpr (struct ud*,int,int) ;
 int resolve_operand_size (struct ud*,int) ;

__attribute__((used)) static void
decode_reg(struct ud *u,
           struct ud_operand *opr,
           int type,
           int num,
           int size)
{
  int reg;
  size = resolve_operand_size(u, size);
  switch (type) {
    case 131 : reg = decode_gpr(u, size, num); break;
    case 130 : reg = UD_R_MM0 + (num & 7); break;
    case 128 :
      reg = num + (size == SZ_QQ ? UD_R_YMM0 : UD_R_XMM0);
      break;
    case 133 : reg = UD_R_CR0 + num; break;
    case 132 : reg = UD_R_DR0 + num; break;
    case 129 : {



      if ((num & 7) > 5) {
        UDERR(u, "invalid segment register value\n");
        return;
      } else {
        reg = UD_R_ES + (num & 7);
      }
      break;
    }
    default:
      UD_ASSERT(!"invalid register type");
      return;
  }
  opr->type = UD_OP_REG;
  opr->base = reg;
  opr->size = size;
}
