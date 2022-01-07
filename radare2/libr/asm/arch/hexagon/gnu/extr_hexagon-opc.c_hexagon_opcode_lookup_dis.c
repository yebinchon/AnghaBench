
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hexagon_opcode ;
typedef int hexagon_insn ;


 size_t HEXAGON_HASH_ICODE (int ) ;
 int const** icode_map ;

const hexagon_opcode *
hexagon_opcode_lookup_dis
(hexagon_insn insn)
{
if (icode_map) {
  return (icode_map [HEXAGON_HASH_ICODE (insn)]);
}
return ((void*)0);
}
