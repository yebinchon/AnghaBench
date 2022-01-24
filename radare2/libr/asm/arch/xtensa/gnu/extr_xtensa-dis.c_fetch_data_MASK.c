#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct disassemble_info {int (* read_memory_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct disassemble_info*) ;int /*<<< orphan*/  (* memory_error_func ) (int,int /*<<< orphan*/ ,struct disassemble_info*) ;scalar_t__ private_data; } ;
struct dis_private {int /*<<< orphan*/  bailout; int /*<<< orphan*/  byte_buf; } ;
typedef  int /*<<< orphan*/  bfd_vma ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct disassemble_info*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct disassemble_info*) ; 
 int /*<<< orphan*/  xtensa_default_isa ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (struct disassemble_info *info, bfd_vma memaddr)
{
  int length, status = 0;
  struct dis_private *priv = (struct dis_private *) info->private_data;
  int insn_size = FUNC4 (xtensa_default_isa);

  /* Read the maximum instruction size, padding with zeros if we go past
     the end of the text section.  This code will automatically adjust
     length when we hit the end of the buffer.  */

  FUNC1 (priv->byte_buf, 0, insn_size);
  for (length = insn_size; length > 0; length--)
    {
      status = (*info->read_memory_func) (memaddr, priv->byte_buf, length,
					  info);
      if (status == 0) {
	      return length;
      }
    }
  (*info->memory_error_func) (status, memaddr, info);
  FUNC0 (priv->bailout, 1);
return -1;
  /*NOTREACHED*/
}