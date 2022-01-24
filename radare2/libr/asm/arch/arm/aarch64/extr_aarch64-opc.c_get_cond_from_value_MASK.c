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
typedef  int aarch64_insn ;
typedef  int /*<<< orphan*/  aarch64_cond ;

/* Variables and functions */
 int /*<<< orphan*/  const* aarch64_conds ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

const aarch64_cond *
FUNC1 (aarch64_insn value)
{
  FUNC0 (value < 16);
  return &aarch64_conds[(unsigned int) value];
}