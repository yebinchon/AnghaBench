
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int disassembler_ftype ;
typedef int bfd ;


 unsigned long bfd_big_endian (int *) ;
 int hexagon_get_disassembler_from_mach (unsigned long,unsigned long) ;

disassembler_ftype
hexagon_get_disassembler(
    bfd *abfd
)
{
  unsigned long machine = 0;
  unsigned long big_p = bfd_big_endian(abfd);
  return (hexagon_get_disassembler_from_mach(machine, big_p));
}
