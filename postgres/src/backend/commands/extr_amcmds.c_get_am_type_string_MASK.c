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
#define  AMTYPE_INDEX 129 
#define  AMTYPE_TABLE 128 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char) ; 

__attribute__((used)) static const char *
FUNC1(char amtype)
{
	switch (amtype)
	{
		case AMTYPE_INDEX:
			return "INDEX";
		case AMTYPE_TABLE:
			return "TABLE";
		default:
			/* shouldn't happen */
			FUNC0(ERROR, "invalid access method type '%c'", amtype);
			return NULL;		/* keep compiler quiet */
	}
}