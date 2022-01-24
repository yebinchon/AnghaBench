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
struct user_desc {scalar_t__ seg_32bit; int /*<<< orphan*/  entry_number; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  SYS_modify_ldt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int errno ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct user_desc const*,int) ; 

__attribute__((used)) static void FUNC3(const struct user_desc *desc, bool oldmode)
{
	int ret = FUNC2(SYS_modify_ldt, oldmode ? 1 : 0x11,
			  desc, sizeof(*desc));
	if (ret < -1)
		errno = -ret;
	if (ret == 0) {
		FUNC0(desc->entry_number, 1);
	} else if (errno == ENOSYS) {
		FUNC1("[OK]\tmodify_ldt returned -ENOSYS\n");
	} else {
		if (desc->seg_32bit) {
			FUNC1("[FAIL]\tUnexpected modify_ldt failure %d\n",
			       errno);
			nerrs++;
		} else {
			FUNC1("[OK]\tmodify_ldt rejected 16 bit segment\n");
		}
	}
}