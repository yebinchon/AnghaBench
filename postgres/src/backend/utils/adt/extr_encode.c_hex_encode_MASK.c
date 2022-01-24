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
 void** hextbl ; 

unsigned
FUNC0(const char *src, unsigned len, char *dst)
{
	const char *end = src + len;

	while (src < end)
	{
		*dst++ = hextbl[(*src >> 4) & 0xF];
		*dst++ = hextbl[*src & 0xF];
		src++;
	}
	return len * 2;
}