
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int (* read_memory_func ) (int ,int ,int,struct disassemble_info*) ;int (* memory_error_func ) (int,int ,struct disassemble_info*) ;scalar_t__ private_data; } ;
struct dis_private {int bailout; int byte_buf; } ;
typedef int bfd_vma ;


 int OPCODES_SIGLONGJMP (int ,int) ;
 int memset (int ,int ,int) ;
 int stub1 (int ,int ,int,struct disassemble_info*) ;
 int stub2 (int,int ,struct disassemble_info*) ;
 int xtensa_default_isa ;
 int xtensa_isa_maxlength (int ) ;

__attribute__((used)) static int
fetch_data (struct disassemble_info *info, bfd_vma memaddr)
{
  int length, status = 0;
  struct dis_private *priv = (struct dis_private *) info->private_data;
  int insn_size = xtensa_isa_maxlength (xtensa_default_isa);





  memset (priv->byte_buf, 0, insn_size);
  for (length = insn_size; length > 0; length--)
    {
      status = (*info->read_memory_func) (memaddr, priv->byte_buf, length,
       info);
      if (status == 0) {
       return length;
      }
    }
  (*info->memory_error_func) (status, memaddr, info);
  OPCODES_SIGLONGJMP (priv->bailout, 1);
return -1;

}
