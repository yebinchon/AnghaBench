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
struct ud {int /*<<< orphan*/  asm_buf_int; int /*<<< orphan*/  mnemonic; } ;

/* Variables and functions */
 int /*<<< orphan*/  UD_Iinvalid ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC1 (struct ud*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ud*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ud*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ud*,int /*<<< orphan*/ ) ; 

extern void 
FUNC5(struct ud* u)
{
  FUNC0((void*)u, 0, sizeof(struct ud));
  FUNC3(u, 16);
  u->mnemonic = UD_Iinvalid;
  FUNC4(u, 0);
#ifndef __UD_STANDALONE__
  FUNC2(u, stdin);
#endif /* __UD_STANDALONE__ */

  FUNC1(u, u->asm_buf_int, sizeof(u->asm_buf_int));
}