
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef enum bfd_endian { ____Placeholder_bfd_endian } bfd_endian ;
struct TYPE_6__ {int (* read_memory_func ) (int ,int *,int,TYPE_1__*) ;int (* memory_error_func ) (int,int ,TYPE_1__*) ;} ;
typedef TYPE_1__ disassemble_info ;
typedef int bfd_vma ;
typedef int bfd_byte ;


 int BFD_ENDIAN_BIG ;
 int INSNLEN ;
 scalar_t__ bfd_getb32 (int *) ;
 scalar_t__ bfd_getl32 (int *) ;
 int nios2_disassemble (int ,unsigned long,TYPE_1__*) ;
 int stub1 (int ,int *,int,TYPE_1__*) ;
 int stub2 (int,int ,TYPE_1__*) ;

__attribute__((used)) static int
print_insn_nios2 (bfd_vma address, disassemble_info *info,
    enum bfd_endian endianness)
{
  bfd_byte buffer[INSNLEN];
  int status;

  status = (*info->read_memory_func) (address, buffer, INSNLEN, info);
  if (status == 0)
    {
      unsigned long insn;
      if (endianness == BFD_ENDIAN_BIG) {
       insn = (unsigned long)bfd_getb32 (buffer);
      } else {
       insn = (unsigned long)bfd_getl32 (buffer);
      }
      status = nios2_disassemble (address, insn, info);
    }
  else
    {
      (*info->memory_error_func) (status, address, info);
      status = -1;
    }
  return status;
}
