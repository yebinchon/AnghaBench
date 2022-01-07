
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int dummy; } ;
typedef int bfd_vma ;
typedef int bfd_byte ;


 int Offset ;
 scalar_t__ bytes ;
 int memcpy (int *,scalar_t__,unsigned int) ;

__attribute__((used)) static int arm_buffer_read_memory(bfd_vma memaddr, bfd_byte *myaddr,
                                  unsigned int length, struct disassemble_info *info) {
 int delta = (memaddr - Offset);
 if (delta < 0) {
  return -1;
 }
 if ((delta + length) > 4) {
  return -1;
 }
 memcpy (myaddr, bytes + delta, length);
 return 0;
}
