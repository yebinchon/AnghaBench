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
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  op_agent ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC2(void)
{
	op_agent = FUNC1();
	if (!op_agent) {
		FUNC0(stderr, "OpAgent initialization failed [%d]!\n", errno);
		return 0;
	}
	return 1;
}