
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arc_opcode {int flags; } ;


 int ARC_HAVE_CPU (int ) ;
 int ARC_OPCODE_CPU (int ) ;
 int cpu_type ;

int
arc_opcode_supported (const struct arc_opcode *opcode)
{
 if (ARC_OPCODE_CPU (opcode->flags) == 0) {
  return 1;
 }
 if (ARC_OPCODE_CPU (opcode->flags) & ARC_HAVE_CPU (cpu_type)) {
  return 1;
 }
 return 0;
}
