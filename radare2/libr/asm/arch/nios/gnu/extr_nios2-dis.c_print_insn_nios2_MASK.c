#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  enum bfd_endian { ____Placeholder_bfd_endian } bfd_endian ;
struct TYPE_6__ {int (* read_memory_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__*) ;int /*<<< orphan*/  (* memory_error_func ) (int,int /*<<< orphan*/ ,TYPE_1__*) ;} ;
typedef  TYPE_1__ disassemble_info ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 int BFD_ENDIAN_BIG ; 
 int INSNLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5 (bfd_vma address, disassemble_info *info,
		  enum bfd_endian endianness)
{
  bfd_byte buffer[INSNLEN];
  int status;

  status = (*info->read_memory_func) (address, buffer, INSNLEN, info);
  if (status == 0)
    {
      unsigned long insn;
      if (endianness == BFD_ENDIAN_BIG) {
	      insn = (unsigned long)FUNC0 (buffer);
      } else {
	      insn = (unsigned long)FUNC1 (buffer);
      }
      status = FUNC2 (address, insn, info);
    }
  else
    {
      (*info->memory_error_func) (status, address, info);
      status = -1;
    }
  return status;
}