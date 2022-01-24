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
typedef  scalar_t__ pg_crc32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char) ; 

unsigned int
FUNC4(char *buf, int size)
{
	pg_crc32	crc;
	char	   *p = buf;

	FUNC2(crc);
	while (size > 0)
	{
		char		c = (char) FUNC3(*p);

		FUNC0(crc, &c, 1);
		size--;
		p++;
	}
	FUNC1(crc);
	return (unsigned int) crc;
}