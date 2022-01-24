#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_1__* mips_abi_choices ; 
 TYPE_1__* mips_arch_choices ; 

void
FUNC3 (FILE *stream)
{
  unsigned int i;

  FUNC2 (stream, FUNC1("\n\
The following MIPS specific disassembler options are supported for use\n\
with the -M switch (multiple options should be separated by commas):\n"));

  FUNC2 (stream, FUNC1("\n\
  gpr-names=ABI            Print GPR names according to  specified ABI.\n\
                           Default: based on binary being disassembled.\n"));

  FUNC2 (stream, FUNC1("\n\
  fpr-names=ABI            Print FPR names according to specified ABI.\n\
                           Default: numeric.\n"));

  FUNC2 (stream, FUNC1("\n\
  cp0-names=ARCH           Print CP0 register names according to\n\
                           specified architecture.\n\
                           Default: based on binary being disassembled.\n"));

  FUNC2 (stream, FUNC1("\n\
  hwr-names=ARCH           Print HWR names according to specified \n\
			   architecture.\n\
                           Default: based on binary being disassembled.\n"));

  FUNC2 (stream, FUNC1("\n\
  reg-names=ABI            Print GPR and FPR names according to\n\
                           specified ABI.\n"));

  FUNC2 (stream, FUNC1("\n\
  reg-names=ARCH           Print CP0 register and HWR names according to\n\
                           specified architecture.\n"));

  FUNC2 (stream, FUNC1("\n\
  For the options above, the following values are supported for \"ABI\":\n\
   "));
  for (i = 0; i < FUNC0 (mips_abi_choices); i++) {
	  FUNC2 (stream, " %s", mips_abi_choices[i].name);
  }
  FUNC2 (stream, FUNC1("\n"));

  FUNC2 (stream, FUNC1("\n\
  For the options above, The following values are supported for \"ARCH\":\n\
   "));
  for (i = 0; i < FUNC0 (mips_arch_choices); i++) {
	  if (*mips_arch_choices[i].name != '\0') {
		  FUNC2 (stream, " %s", mips_arch_choices[i].name);
	  }
  }
  FUNC2 (stream, FUNC1("\n"));

  FUNC2 (stream, FUNC1("\n"));
}