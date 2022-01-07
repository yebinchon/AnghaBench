
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
struct disassemble_info {int dummy; } ;
typedef int bfd_vma ;
typedef int bfd_byte ;


 int Offset ;
 int R_MIN (int,int ) ;
 scalar_t__ bytes ;
 int bytes_size ;
 int memcpy (int *,scalar_t__,int ) ;

__attribute__((used)) static int vax_buffer_read_memory (bfd_vma memaddr, bfd_byte *myaddr, ut32 length, struct disassemble_info *info) {
 int delta = (memaddr - Offset);
 if (delta < 0) {
  return -1;
 }
 if (delta > length) {
  return -1;
 }
 memcpy (myaddr, bytes + delta, R_MIN (length, bytes_size));
 return 0;
}
