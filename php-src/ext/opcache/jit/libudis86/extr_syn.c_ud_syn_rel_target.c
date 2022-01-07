
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long const uint64_t ;
struct TYPE_2__ {unsigned long long const sbyte; unsigned long long const sword; unsigned long long const sdword; } ;
struct ud_operand {int size; TYPE_1__ lval; } ;
struct ud {int adr_mode; int opr_mode; unsigned long long const pc; } ;


 int UD_ASSERT (int) ;

uint64_t
ud_syn_rel_target(struct ud *u, struct ud_operand *opr)
{

  const uint64_t trunc_mask = 0xffffffffffffffffull >> (64 - u->adr_mode);



  switch (opr->size) {
  case 8 : return (u->pc + opr->lval.sbyte) & trunc_mask;
  case 16: return (u->pc + opr->lval.sword) & trunc_mask;
  case 32: return (u->pc + opr->lval.sdword) & trunc_mask;
  default: UD_ASSERT(!"invalid relative offset size.");
    return 0ull;
  }
}
