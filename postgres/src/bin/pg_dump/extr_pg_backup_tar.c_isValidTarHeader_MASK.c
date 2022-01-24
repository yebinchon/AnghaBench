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
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*,int) ; 
 int FUNC2 (char*) ; 

bool
FUNC3(char *header)
{
	int			sum;
	int			chk = FUNC2(header);

	sum = FUNC1(&header[148], 8);

	if (sum != chk)
		return false;

	/* POSIX tar format */
	if (FUNC0(&header[257], "ustar\0", 6) == 0 &&
		FUNC0(&header[263], "00", 2) == 0)
		return true;
	/* GNU tar format */
	if (FUNC0(&header[257], "ustar  \0", 8) == 0)
		return true;
	/* not-quite-POSIX format written by pre-9.3 pg_dump */
	if (FUNC0(&header[257], "ustar00\0", 8) == 0)
		return true;

	return false;
}