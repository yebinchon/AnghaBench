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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,char) ; 
 int FUNC2 (int,char*,int) ; 

__attribute__((used)) static int FUNC3(int fdr, char payload_char)
{
	char buf[100];
	int ret;

	ret = FUNC2(fdr, buf, sizeof(buf));
	if (ret != sizeof(buf))
		FUNC0(1, errno, "read");

	if (buf[60] != payload_char) {
		FUNC1("wrong pattern: 0x%x != 0x%x\n", buf[60], payload_char);
		return 1;
	}

	FUNC1("read: %c (0x%x)\n", buf[60], buf[60]);
	return 0;
}