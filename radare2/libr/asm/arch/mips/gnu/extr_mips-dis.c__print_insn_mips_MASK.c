#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct disassemble_info {scalar_t__ mach; scalar_t__ flavour; int (* read_memory_func ) (int,int /*<<< orphan*/ *,int,struct disassemble_info*) ;int /*<<< orphan*/  (* memory_error_func ) (int,int,struct disassemble_info*) ;int /*<<< orphan*/ * symbols; int /*<<< orphan*/  disassembler_options; } ;
typedef  enum bfd_endian { ____Placeholder_bfd_endian } bfd_endian ;
struct TYPE_3__ {scalar_t__ st_other; } ;
struct TYPE_4__ {TYPE_1__ internal_elf_sym; } ;
typedef  TYPE_2__ elf_symbol_type ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 int BFD_ENDIAN_BIG ; 
 int INSNLEN ; 
 scalar_t__ STO_MIPS16 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ bfd_mach_mips16 ; 
 scalar_t__ bfd_target_elf_flavour ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,unsigned long,struct disassemble_info*) ; 
 int FUNC4 (int,struct disassemble_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct disassemble_info*) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int,struct disassemble_info*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,struct disassemble_info*) ; 

__attribute__((used)) static int
FUNC8 (bfd_vma memaddr,
		  struct disassemble_info *info,
		  enum bfd_endian endianness)
{
  bfd_byte buffer[INSNLEN];
  int status;

  FUNC5 (info);
  FUNC2 (info->disassembler_options);

#if 1
  /* FIXME: If odd address, this is CLEARLY a mips 16 instruction.  */
  /* Only a few tools will work this way.  */
  if (memaddr & 0x01) {
	  return FUNC4 (memaddr, info);
  }
#endif

#if SYMTAB_AVAILABLE
  if (info->mach == bfd_mach_mips16 || (info->flavour == bfd_target_elf_flavour && info->symbols != NULL && ((*(elf_symbol_type **)info->symbols)->internal_elf_sym.st_other == STO_MIPS16))) {
	  return print_insn_mips16 (memaddr, info);
  }
#endif

  status = (*info->read_memory_func) (memaddr, buffer, INSNLEN, info);
  if (status == 0)
    {
      unsigned long insn;

      if (endianness == BFD_ENDIAN_BIG) {
	      insn = (unsigned long)FUNC0 (buffer);
      } else {
	      insn = (unsigned long)FUNC1 (buffer);
      }

      return FUNC3 (memaddr, insn, info);
    }
  else
    {
      (*info->memory_error_func) (status, memaddr, info);
      return -1;
    }
}