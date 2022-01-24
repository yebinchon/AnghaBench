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
 unsigned short CHAR_BIT ; 
 unsigned short UCHAR_MAX ; 

__attribute__((used)) static void
FUNC0(unsigned char *buf, int len)
{
	unsigned short s = 1;

	for (int i = len - 1; i >= 0; --i)
	{
		unsigned char c = ~buf[i];

		s = c + s;
		c = s & UCHAR_MAX;
		s >>= CHAR_BIT;

		buf[i] = c;
	}

	/* last carry out is ignored */
}