#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ptrdiff_t ;
struct TYPE_2__ {char* z_name; char* z_filename; int /*<<< orphan*/  z_linenum; } ;

/* Variables and functions */
 char* TZDEFRULES ; 
 size_t ZF_NAME ; 
 int ZONE_MAXFIELDS ; 
 int ZONE_MINFIELDS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int FUNC2 (char**,int,int) ; 
 int /*<<< orphan*/ * lcltime ; 
 size_t nzones ; 
 int /*<<< orphan*/ * psxrules ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* tzdefault ; 
 TYPE_1__* zones ; 

__attribute__((used)) static bool
FUNC4(char **fields, int nfields)
{
	ptrdiff_t	i;

	if (nfields < ZONE_MINFIELDS || nfields > ZONE_MAXFIELDS)
	{
		FUNC1(FUNC0("wrong number of fields on Zone line"));
		return false;
	}
	if (lcltime != NULL && FUNC3(fields[ZF_NAME], tzdefault) == 0)
	{
		FUNC1(
			  FUNC0("\"Zone %s\" line and -l option are mutually exclusive"),
			  tzdefault);
		return false;
	}
	if (FUNC3(fields[ZF_NAME], TZDEFRULES) == 0 && psxrules != NULL)
	{
		FUNC1(
			  FUNC0("\"Zone %s\" line and -p option are mutually exclusive"),
			  TZDEFRULES);
		return false;
	}
	for (i = 0; i < nzones; ++i)
		if (zones[i].z_name != NULL &&
			FUNC3(zones[i].z_name, fields[ZF_NAME]) == 0)
		{
			FUNC1(FUNC0("duplicate zone name %s"
					" (file \"%s\", line %d)"),
				  fields[ZF_NAME],
				  zones[i].z_filename,
				  zones[i].z_linenum);
			return false;
		}
	return FUNC2(fields, nfields, false);
}