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
struct TYPE_3__ {scalar_t__ num_sync; int /*<<< orphan*/  config_size; } ;
typedef  int /*<<< orphan*/  SyncRepConfigData ;
typedef  int /*<<< orphan*/  GucSource ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * syncrep_parse_error_msg ; 
 TYPE_1__* syncrep_parse_result ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 () ; 

bool
FUNC8(char **newval, void **extra, GucSource source)
{
	if (*newval != NULL && (*newval)[0] != '\0')
	{
		int			parse_rc;
		SyncRepConfigData *pconf;

		/* Reset communication variables to ensure a fresh start */
		syncrep_parse_result = NULL;
		syncrep_parse_error_msg = NULL;

		/* Parse the synchronous_standby_names string */
		FUNC6(*newval);
		parse_rc = FUNC7();
		FUNC5();

		if (parse_rc != 0 || syncrep_parse_result == NULL)
		{
			FUNC0(ERRCODE_SYNTAX_ERROR);
			if (syncrep_parse_error_msg)
				FUNC1("%s", syncrep_parse_error_msg);
			else
				FUNC1("synchronous_standby_names parser failed");
			return false;
		}

		if (syncrep_parse_result->num_sync <= 0)
		{
			FUNC2("number of synchronous standbys (%d) must be greater than zero",
							 syncrep_parse_result->num_sync);
			return false;
		}

		/* GUC extra value must be malloc'd, not palloc'd */
		pconf = (SyncRepConfigData *)
			FUNC3(syncrep_parse_result->config_size);
		if (pconf == NULL)
			return false;
		FUNC4(pconf, syncrep_parse_result, syncrep_parse_result->config_size);

		*extra = (void *) pconf;

		/*
		 * We need not explicitly clean up syncrep_parse_result.  It, and any
		 * other cruft generated during parsing, will be freed when the
		 * current memory context is deleted.  (This code is generally run in
		 * a short-lived context used for config file processing, so that will
		 * not be very long.)
		 */
	}
	else
		*extra = NULL;

	return true;
}