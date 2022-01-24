#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  status; int /*<<< orphan*/  xid; } ;
struct TYPE_7__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ MultiXactMember ;
typedef  int /*<<< orphan*/  MultiXactId ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

char *
FUNC6(MultiXactId multi, int nmembers, MultiXactMember *members)
{
	static char *str = NULL;
	StringInfoData buf;
	int			i;

	if (str != NULL)
		FUNC5(str);

	FUNC3(&buf);

	FUNC1(&buf, "%u %d[%u (%s)", multi, nmembers, members[0].xid,
					 FUNC4(members[0].status));

	for (i = 1; i < nmembers; i++)
		FUNC1(&buf, ", %u (%s)", members[i].xid,
						 FUNC4(members[i].status));

	FUNC2(&buf, ']');
	str = FUNC0(TopMemoryContext, buf.data);
	FUNC5(buf.data);
	return str;
}