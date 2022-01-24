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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 

void
FUNC1 (FILE *stream)
{
  FUNC0 (stream, "\n\
The following PPC specific disassembler options are supported for use with\n\
the -M switch:\n");

  FUNC0 (stream, "  booke|booke32|booke64    Disassemble the BookE instructions\n");
  FUNC0 (stream, "  e300                     Disassemble the e300 instructions\n");
  FUNC0 (stream, "  e500|e500x2              Disassemble the e500 instructions\n");
  FUNC0 (stream, "  e500mc                   Disassemble the e500mc instructions\n");
  FUNC0 (stream, "  440                      Disassemble the 440 instructions\n");
  FUNC0 (stream, "  464                      Disassemble the 464 instructions\n");
  FUNC0 (stream, "  efs                      Disassemble the EFS instructions\n");
  FUNC0 (stream, "  ppcps                    Disassemble the PowerPC paired singles instructions\n");
  FUNC0 (stream, "  power4                   Disassemble the Power4 instructions\n");
  FUNC0 (stream, "  power5                   Disassemble the Power5 instructions\n");
  FUNC0 (stream, "  power6                   Disassemble the Power6 instructions\n");
  FUNC0 (stream, "  power7                   Disassemble the Power7 instructions\n");
  FUNC0 (stream, "  vsx                      Disassemble the Vector-Scalar (VSX) instructions\n");
  FUNC0 (stream, "  32                       Do not disassemble 64-bit instructions\n");
  FUNC0 (stream, "  64                       Allow disassembly of 64-bit instructions\n");
}