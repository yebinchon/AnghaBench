
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut32 ;
struct disassemble_info {int dummy; } ;
typedef int bfd_vma ;
typedef int bfd_byte ;


 scalar_t__ INSN_BUFFER_SIZE ;
 int bytes ;
 int memcpy (int *,int ,scalar_t__) ;

__attribute__((used)) static int xtensa_buffer_read_memory (bfd_vma memaddr, bfd_byte *myaddr, ut32 length, struct disassemble_info *info) {
 if (length > INSN_BUFFER_SIZE) {
  length = INSN_BUFFER_SIZE;
 }
 memcpy (myaddr, bytes, length);
 return 0;
}
