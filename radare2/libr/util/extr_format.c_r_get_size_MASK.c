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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut64 ;
typedef  int /*<<< orphan*/  RNum ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(RNum *num, ut8 *buf, int endian, const char *s) {
	int size = 0, len = FUNC1 (s);
	ut64 addr;

	if (s[0] == '*' && len >= 4) { // value pointed by the address
		int offset = (int)FUNC0 (num, s + 1);
		(void)FUNC2 (buf + offset, 999, endian, &addr, NULL);
		return addr;
	} else {
		// flag handling doesnt seems to work here
		size = FUNC0 (num, s);
	}
	return size;
}