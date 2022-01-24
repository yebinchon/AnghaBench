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
struct user_desc {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENOSYS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  nerrs ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int,struct user_desc*,int) ; 

__attribute__((used)) static void FUNC2(struct user_desc *desc)
{
	if (FUNC1(0x11, desc, sizeof(*desc)) == 0) {
		FUNC0("[FAIL]\tmodify_ldt accepted a bad descriptor\n");
		nerrs++;
	} else if (errno == ENOSYS) {
		FUNC0("[OK]\tmodify_ldt returned -ENOSYS\n");
	} else {
		FUNC0("[OK]\tmodify_ldt failure %d\n", errno);
	}
}