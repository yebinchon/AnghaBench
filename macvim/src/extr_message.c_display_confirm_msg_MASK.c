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

/* Variables and functions */
 int /*<<< orphan*/  HLF_M ; 
 int /*<<< orphan*/ * confirm_msg ; 
 int /*<<< orphan*/  confirm_msg_used ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2()
{
    /* avoid that 'q' at the more prompt truncates the message here */
    ++confirm_msg_used;
    if (confirm_msg != NULL)
	FUNC1(confirm_msg, FUNC0(HLF_M));
    --confirm_msg_used;
}