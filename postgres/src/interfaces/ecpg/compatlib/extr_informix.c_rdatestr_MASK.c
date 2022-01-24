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
typedef  int /*<<< orphan*/  date ;

/* Variables and functions */
 int ECPG_INFORMIX_DATE_CONVERT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

int
FUNC3(date d, char *str)
{
	char	   *tmp = FUNC0(d);

	if (!tmp)
		return ECPG_INFORMIX_DATE_CONVERT;

	/* move to user allocated buffer */
	FUNC2(str, tmp);
	FUNC1(tmp);

	return 0;
}