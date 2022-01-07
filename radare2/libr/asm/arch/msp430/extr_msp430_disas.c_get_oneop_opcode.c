
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;



__attribute__((used)) static int get_oneop_opcode(ut16 instr)
{
 return (instr >> 7) & 0x7;
}
