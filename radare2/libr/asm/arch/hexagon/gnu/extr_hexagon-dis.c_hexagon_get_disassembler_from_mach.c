
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int disassembler_ftype ;


 int hexagon_decode_inst ;
 int hexagon_get_opcode_mach (unsigned long,unsigned long) ;
 int hexagon_opcode_init_tables (int ) ;

disassembler_ftype
hexagon_get_disassembler_from_mach(
  unsigned long machine,
  unsigned long big_p
)
{
  hexagon_opcode_init_tables(hexagon_get_opcode_mach(machine, big_p));
  return hexagon_decode_inst;
}
