#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct config_generic {char* name; } ;
struct TYPE_11__ {scalar_t__ format; int /*<<< orphan*/  settings; } ;
struct TYPE_10__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ ExplainState ;

/* Variables and functions */
 scalar_t__ EXPLAIN_FORMAT_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,TYPE_2__*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 struct config_generic** FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(ExplainState *es)
{
	int			num;
	struct config_generic **gucs;

	/* bail out if information about settings not requested */
	if (!es->settings)
		return;

	/* request an array of relevant settings */
	gucs = FUNC6(&num);

	/* also bail out of there are no options */
	if (!num)
		return;

	if (es->format != EXPLAIN_FORMAT_TEXT)
	{
		int			i;

		FUNC1("Settings", "Settings", true, es);

		for (i = 0; i < num; i++)
		{
			char	   *setting;
			struct config_generic *conf = gucs[i];

			setting = FUNC3(conf->name, NULL, true);

			FUNC2(conf->name, setting, es);
		}

		FUNC0("Settings", "Settings", true, es);
	}
	else
	{
		int			i;
		StringInfoData str;

		FUNC7(&str);

		for (i = 0; i < num; i++)
		{
			char	   *setting;
			struct config_generic *conf = gucs[i];

			if (i > 0)
				FUNC5(&str, ", ");

			setting = FUNC3(conf->name, NULL, true);

			if (setting)
				FUNC4(&str, "%s = '%s'", conf->name, setting);
			else
				FUNC4(&str, "%s = NULL", conf->name);
		}

		if (num > 0)
			FUNC2("Settings", str.data, es);
	}
}