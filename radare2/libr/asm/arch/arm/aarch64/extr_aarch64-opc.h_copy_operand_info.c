
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int aarch64_opnd_info ;
struct TYPE_5__ {TYPE_2__* operands; } ;
typedef TYPE_1__ aarch64_inst ;
struct TYPE_6__ {int idx; } ;


 int AARCH64_MAX_OPND_NUM ;
 int assert (int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static inline void
copy_operand_info (aarch64_inst *inst, int dst, int src)
{
  assert (dst >= 0 && src >= 0 && dst < AARCH64_MAX_OPND_NUM
   && src < AARCH64_MAX_OPND_NUM);
  memcpy (&inst->operands[dst], &inst->operands[src],
   sizeof (aarch64_opnd_info));
  inst->operands[dst].idx = dst;
}
