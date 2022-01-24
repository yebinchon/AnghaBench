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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  op_size ; 
 int FUNC4 (int,char*,int /*<<< orphan*/ ) ; 

void FUNC5(int src)
{
	int r;
	char *buf = FUNC2(op_size);

	FUNC3(buf, 'z', op_size);
	r = FUNC4(src, buf, op_size);
	if (r < 0)
		FUNC0(1, errno, "Failed to sendmsg");

	FUNC1(buf);
}