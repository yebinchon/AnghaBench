
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hexagon_opcode ;


 size_t HEXAGON_HASH_OPCODE (char const*) ;
 int const** opcode_map ;

const hexagon_opcode *
hexagon_opcode_lookup_asm
(const char *insn)
{
  return (opcode_map [HEXAGON_HASH_OPCODE (insn)]);
}
