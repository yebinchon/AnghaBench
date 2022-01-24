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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  WC_COMPOSITECHECK ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

char * FUNC3(const wchar_t * unicode)
{
	int needed;
	char * buffer = NULL;
	if((needed = FUNC2(CP_ACP, WC_COMPOSITECHECK, unicode, -1, NULL, 0, NULL, NULL)))
		if((buffer = (char *) FUNC0(LPTR, needed)))
			if(needed != FUNC2(CP_ACP, WC_COMPOSITECHECK, unicode, -1, buffer, needed, NULL, NULL))
				buffer = (char *) FUNC1(buffer);
	return buffer;
}