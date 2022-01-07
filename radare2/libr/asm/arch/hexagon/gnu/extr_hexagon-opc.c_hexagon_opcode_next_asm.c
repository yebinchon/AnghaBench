
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next_asm; } ;
typedef TYPE_1__ hexagon_opcode ;



const hexagon_opcode *
hexagon_opcode_next_asm
(const hexagon_opcode *op)
{
  if (op)
    op = op->next_asm;

  return (op);
}
