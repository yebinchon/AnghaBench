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
typedef  unsigned long long u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static char *FUNC1(u64 value)
{
	static char buf[16];

	buf[0] = '\0';

	if (value & (1ull << 63))
		FUNC0(buf, "GE ");
	if (value & (1ull << 32))
		FUNC0(buf, "PMAE ");
	if (value & 1)
		FUNC0(buf, "PMAO ");

	return buf;
}