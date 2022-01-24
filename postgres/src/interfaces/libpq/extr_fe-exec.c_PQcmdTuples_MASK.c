#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* cmdStatus; int /*<<< orphan*/  noticeHooks; } ;
typedef  TYPE_1__ PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

char *
FUNC3(PGresult *res)
{
	char	   *p,
			   *c;

	if (!res)
		return "";

	if (FUNC2(res->cmdStatus, "INSERT ", 7) == 0)
	{
		p = res->cmdStatus + 7;
		/* INSERT: skip oid and space */
		while (*p && *p != ' ')
			p++;
		if (*p == 0)
			goto interpret_error;	/* no space? */
		p++;
	}
	else if (FUNC2(res->cmdStatus, "SELECT ", 7) == 0 ||
			 FUNC2(res->cmdStatus, "DELETE ", 7) == 0 ||
			 FUNC2(res->cmdStatus, "UPDATE ", 7) == 0)
		p = res->cmdStatus + 7;
	else if (FUNC2(res->cmdStatus, "FETCH ", 6) == 0)
		p = res->cmdStatus + 6;
	else if (FUNC2(res->cmdStatus, "MOVE ", 5) == 0 ||
			 FUNC2(res->cmdStatus, "COPY ", 5) == 0)
		p = res->cmdStatus + 5;
	else
		return "";

	/* check that we have an integer (at least one digit, nothing else) */
	for (c = p; *c; c++)
	{
		if (!FUNC0((unsigned char) *c))
			goto interpret_error;
	}
	if (c == p)
		goto interpret_error;

	return p;

interpret_error:
	FUNC1(&res->noticeHooks,
					 "could not interpret result from server: %s",
					 res->cmdStatus);
	return "";
}