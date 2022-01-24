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
typedef  int /*<<< orphan*/ * Name ;

/* Variables and functions */
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int
FUNC2(Name name, const char *str)
{
	if (!name || !str)
		return -1;
	FUNC1(FUNC0(*name), str, NAMEDATALEN);
	return 0;
}