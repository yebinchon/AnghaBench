
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ hexagon_opcode ;


 scalar_t__ HEXAGON_CODE_CPU (int ) ;
 scalar_t__ cpu_type ;

int
hexagon_opcode_supported
(const hexagon_opcode *opcode)
{
  return (HEXAGON_CODE_CPU (opcode->flags) <= cpu_type);
}
