
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ud_operand_size_t ;
struct ud {unsigned int opr_mode; int dis_mode; TYPE_1__* itab_entry; int vex_op; } ;
struct TYPE_2__ {int prefix; } ;


 int P_VEXL (int ) ;
 unsigned int SZ_DQ ;
 unsigned int SZ_QQ ;





 int UD_ASSERT (int) ;
 int vex_l (struct ud const*) ;

__attribute__((used)) static unsigned int
resolve_operand_size(const struct ud* u, ud_operand_size_t osize)
{
  switch (osize) {
  case 131:
    return u->opr_mode;
  case 128:
    return u->opr_mode == 16 ? 16 : 32;
  case 129:
    return u->opr_mode == 16 ? 32 : u->opr_mode;
  case 132:
    return u->dis_mode == 64 ? 64 : 32;
  case 130:
    UD_ASSERT(u->vex_op != 0);
    return (P_VEXL(u->itab_entry->prefix) && vex_l(u)) ? SZ_QQ : SZ_DQ;
  default:
    return osize;
  }
}
