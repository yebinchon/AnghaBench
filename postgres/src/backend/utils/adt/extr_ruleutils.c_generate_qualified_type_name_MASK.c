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
struct TYPE_2__ {int /*<<< orphan*/  typnamespace; int /*<<< orphan*/  typname; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char*) ; 

__attribute__((used)) static char *
FUNC9(Oid typid)
{
	HeapTuple	tp;
	Form_pg_type typtup;
	char	   *typname;
	char	   *nspname;
	char	   *result;

	tp = FUNC5(TYPEOID, FUNC3(typid));
	if (!FUNC1(tp))
		FUNC6(ERROR, "cache lookup failed for type %u", typid);
	typtup = (Form_pg_type) FUNC0(tp);
	typname = FUNC2(typtup->typname);

	nspname = FUNC7(typtup->typnamespace);
	if (!nspname)
		FUNC6(ERROR, "cache lookup failed for namespace %u",
			 typtup->typnamespace);

	result = FUNC8(nspname, typname);

	FUNC4(tp);

	return result;
}