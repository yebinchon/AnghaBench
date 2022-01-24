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
struct user_desc {int /*<<< orphan*/  entry_number; } ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_modify_ldt ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,struct user_desc const*,int) ; 

__attribute__((used)) static void FUNC3(const struct user_desc *desc, unsigned short *var,
		    const char *name)
{
	if (FUNC2(SYS_modify_ldt, 1, desc, sizeof(*desc)) == 0) {
		*var = FUNC0(desc->entry_number);
	} else {
		FUNC1("[NOTE]\tFailed to create %s segment\n", name);
		*var = 0;
	}
}