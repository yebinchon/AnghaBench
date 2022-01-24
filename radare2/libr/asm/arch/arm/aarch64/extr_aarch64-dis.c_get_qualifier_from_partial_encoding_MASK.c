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
typedef  enum aarch64_opnd_qualifier { ____Placeholder_aarch64_opnd_qualifier } aarch64_opnd_qualifier ;
typedef  int aarch64_insn ;

/* Variables and functions */
 int AARCH64_MAX_QLF_SEQ_NUM ; 
 int const AARCH64_OPND_QLF_NIL ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int const) ; 

__attribute__((used)) static enum aarch64_opnd_qualifier
FUNC2 (aarch64_insn value,
				     const enum aarch64_opnd_qualifier* \
				     candidates,
				     aarch64_insn mask)
{
  int i;
  FUNC0 ("enter with value: %d, mask: %d", (int)value, (int)mask);
  for (i = 0; i < AARCH64_MAX_QLF_SEQ_NUM; ++i)
    {
      aarch64_insn standard_value;
      if (candidates[i] == AARCH64_OPND_QLF_NIL)
	break;
      standard_value = FUNC1 (candidates[i]);
      if ((standard_value & mask) == (value & mask))
	return candidates[i];
    }
  return AARCH64_OPND_QLF_NIL;
}