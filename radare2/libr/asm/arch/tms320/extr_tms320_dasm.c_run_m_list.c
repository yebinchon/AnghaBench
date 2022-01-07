
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int opcode64; TYPE_1__* insn; } ;
typedef TYPE_2__ tms320_dasm_t ;
struct TYPE_8__ {scalar_t__ v; int n; int f; } ;
typedef TYPE_3__ insn_mask_t ;
struct TYPE_6__ {TYPE_3__* m_list; } ;


 scalar_t__ get_bits (int ,int ,int ) ;
 int m_list_last (TYPE_3__*) ;

int run_m_list(tms320_dasm_t * dasm)
{
 insn_mask_t * mask;

 if (!dasm->insn->m_list) {
  return 1;
 }

 for (mask = dasm->insn->m_list; !m_list_last(mask); mask++) {

  if (get_bits (dasm->opcode64, mask->f, mask->n) != mask->v) {
   return 0;
  }
 }

 return 1;
}
