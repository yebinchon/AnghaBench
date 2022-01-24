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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned char) ; 

__attribute__((used)) static char *
FUNC1(char c)
{
	static char buf[5];

	if (c >= 0x21 && c <= 0x7E)
		FUNC0(buf, sizeof(buf), "'%c'", c);
	else
		FUNC0(buf, sizeof(buf), "0x%02x", (unsigned char) c);
	return buf;
}