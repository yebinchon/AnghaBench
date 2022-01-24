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
typedef  int /*<<< orphan*/  trgm ;
typedef  char pg_crc32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

void
FUNC4(trgm *tptr, char *str, int bytelen)
{
	if (bytelen == 3)
	{
		FUNC1(tptr, str);
	}
	else
	{
		pg_crc32	crc;

		FUNC3(crc);
		FUNC0(crc, str, bytelen);
		FUNC2(crc);

		/*
		 * use only 3 upper bytes from crc, hope, it's good enough hashing
		 */
		FUNC1(tptr, &crc);
	}
}