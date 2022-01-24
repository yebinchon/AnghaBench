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
struct TYPE_2__ {int /*<<< orphan*/  tmplname; int /*<<< orphan*/  tmplinit; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_ts_template ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSTEMPLATEOID ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(Oid tmplId, List *dictoptions)
{
	HeapTuple	tup;
	Form_pg_ts_template tform;
	Oid			initmethod;

	/*
	 * Suppress this test when running in a standalone backend.  This is a
	 * hack to allow initdb to create prefab dictionaries that might not
	 * actually be usable in template1's encoding (due to using external files
	 * that can't be translated into template1's encoding).  We want to create
	 * them anyway, since they might be usable later in other databases.
	 */
	if (!IsUnderPostmaster)
		return;

	tup = FUNC8(TSTEMPLATEOID, FUNC3(tmplId));
	if (!FUNC1(tup)) /* should not happen */
		FUNC10(ERROR, "cache lookup failed for text search template %u",
			 tmplId);
	tform = (Form_pg_ts_template) FUNC0(tup);

	initmethod = tform->tmplinit;

	if (!FUNC5(initmethod))
	{
		/* If there is no init method, disallow any options */
		if (dictoptions)
			FUNC11(ERROR,
					(FUNC12(ERRCODE_SYNTAX_ERROR),
					 FUNC13("text search template \"%s\" does not accept options",
							FUNC2(tform->tmplname))));
	}
	else
	{
		/*
		 * Copy the options just in case init method thinks it can scribble on
		 * them ...
		 */
		dictoptions = FUNC9(dictoptions);

		/*
		 * Call the init method and see if it complains.  We don't worry about
		 * it leaking memory, since our command will soon be over anyway.
		 */
		(void) FUNC4(initmethod, FUNC6(dictoptions));
	}

	FUNC7(tup);
}