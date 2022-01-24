#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  PG_DIAG_MESSAGE_PRIMARY ; 
 int /*<<< orphan*/  PG_DIAG_SEVERITY ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,...) ; 

__attribute__((used)) static void
FUNC7(PGresult *res)
{
	PQExpBuffer msg;
	const char *fld;

	msg = FUNC3();

	fld = FUNC0(res, PG_DIAG_SEVERITY);
	if (fld)
		FUNC6(msg, "%s:  ", fld);
	else
		FUNC6(msg, "ERROR:  ");
	fld = FUNC0(res, PG_DIAG_MESSAGE_PRIMARY);
	if (fld)
		FUNC2(msg, fld);
	else
		FUNC2(msg, "(not available)");
	FUNC1(msg, '\n');

	FUNC5("%s", msg->data);

	FUNC4(msg);
}