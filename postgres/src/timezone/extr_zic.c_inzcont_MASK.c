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
 int ZONEC_MAXFIELDS ; 
 int ZONEC_MINFIELDS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char**,int,int) ; 

__attribute__((used)) static bool
FUNC3(char **fields, int nfields)
{
	if (nfields < ZONEC_MINFIELDS || nfields > ZONEC_MAXFIELDS)
	{
		FUNC1(FUNC0("wrong number of fields on Zone continuation line"));
		return false;
	}
	return FUNC2(fields, nfields, true);
}