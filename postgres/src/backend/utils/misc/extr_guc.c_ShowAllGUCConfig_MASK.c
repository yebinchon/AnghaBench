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
struct config_generic {int flags; char* name; char* short_desc; } ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  TupOutputState ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEFAULT_ROLE_READ_ALL_SETTINGS ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int GUC_NO_SHOW_ALL ; 
 int GUC_SUPERUSER_ONLY ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  TTSOpsVirtual ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (struct config_generic*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct config_generic** guc_variables ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int num_guc_variables ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(DestReceiver *dest)
{
	int			i;
	TupOutputState *tstate;
	TupleDesc	tupdesc;
	Datum		values[3];
	bool		isnull[3] = {false, false, false};

	/* need a tuple descriptor representing three TEXT columns */
	tupdesc = FUNC0(3);
	FUNC4(tupdesc, (AttrNumber) 1, "name",
							  TEXTOID, -1, 0);
	FUNC4(tupdesc, (AttrNumber) 2, "setting",
							  TEXTOID, -1, 0);
	FUNC4(tupdesc, (AttrNumber) 3, "description",
							  TEXTOID, -1, 0);

	/* prepare for projection of tuples */
	tstate = FUNC6(dest, tupdesc, &TTSOpsVirtual);

	for (i = 0; i < num_guc_variables; i++)
	{
		struct config_generic *conf = guc_variables[i];
		char	   *setting;

		if ((conf->flags & GUC_NO_SHOW_ALL) ||
			((conf->flags & GUC_SUPERUSER_ONLY) &&
			 !FUNC10(FUNC2(), DEFAULT_ROLE_READ_ALL_SETTINGS)))
			continue;

		/* assign to the values array */
		values[0] = FUNC3(FUNC7(conf->name));

		setting = FUNC5(conf, true);
		if (setting)
		{
			values[1] = FUNC3(FUNC7(setting));
			isnull[1] = false;
		}
		else
		{
			values[1] = FUNC3(NULL);
			isnull[1] = true;
		}

		values[2] = FUNC3(FUNC7(conf->short_desc));

		/* send it to dest */
		FUNC8(tstate, values, isnull);

		/* clean up */
		FUNC11(FUNC1(values[0]));
		if (setting)
		{
			FUNC11(setting);
			FUNC11(FUNC1(values[1]));
		}
		FUNC11(FUNC1(values[2]));
	}

	FUNC9(tstate);
}