#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hexagon_opcode ;
typedef  int /*<<< orphan*/  hexagon_insn ;
struct TYPE_3__ {int /*<<< orphan*/  stream; int /*<<< orphan*/  (* fprintf_func ) (int /*<<< orphan*/ ,char*,char*) ;} ;
typedef  TYPE_1__ disassemble_info ;
typedef  int /*<<< orphan*/  bfd_vma ;

/* Variables and functions */
 int HEXAGON_INSN_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,char**) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC4(
     bfd_vma address,
     hexagon_insn insn,
     char *instrBuffer,
     disassemble_info * info
)
{
  const hexagon_opcode *opcode;
  int len;
  char *errmsg = NULL;

  len = HEXAGON_INSN_LEN;

  opcode = FUNC1(insn);
  if (opcode) {

      if (!FUNC0(instrBuffer, insn, address, opcode, &errmsg)) {
        /* Some kind of error! */
        if (errmsg) {
          (*info->fprintf_func) (info->stream, "%s", errmsg);
          FUNC2(instrBuffer, "");
        }
      }

      return len;
  }

  // Instruction not found
  FUNC2(instrBuffer, "<unknown>");
  return 4;
}