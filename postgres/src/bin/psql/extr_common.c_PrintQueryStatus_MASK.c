#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {scalar_t__ format; } ;
struct TYPE_5__ {TYPE_1__ topt; } ;
struct TYPE_6__ {int /*<<< orphan*/  vars; scalar_t__ logfile; scalar_t__ queryFout; TYPE_2__ popt; int /*<<< orphan*/  quiet; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ PRINT_HTML ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 TYPE_3__ pset ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static void
FUNC7(PGresult *results)
{
	char		buf[16];

	if (!pset.quiet)
	{
		if (pset.popt.topt.format == PRINT_HTML)
		{
			FUNC4("<p>", pset.queryFout);
			FUNC5(FUNC0(results), pset.queryFout);
			FUNC4("</p>\n", pset.queryFout);
		}
		else
			FUNC3(pset.queryFout, "%s\n", FUNC0(results));
	}

	if (pset.logfile)
		FUNC3(pset.logfile, "%s\n", FUNC0(results));

	FUNC6(buf, sizeof(buf), "%u", (unsigned int) FUNC1(results));
	FUNC2(pset.vars, "LASTOID", buf);
}