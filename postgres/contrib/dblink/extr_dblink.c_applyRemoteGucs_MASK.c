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
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GUC_ACTION_SAVE ; 
 char* FUNC1 (char const*,int,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  PGC_S_SESSION ; 
 int /*<<< orphan*/  PGC_USERSET ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 (char const* const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC7(PGconn *conn)
{
	static const char *const GUCsAffectingIO[] = {
		"DateStyle",
		"IntervalStyle"
	};

	int			nestlevel = -1;
	int			i;

	for (i = 0; i < FUNC4(GUCsAffectingIO); i++)
	{
		const char *gucName = GUCsAffectingIO[i];
		const char *remoteVal = FUNC3(conn, gucName);
		const char *localVal;

		/*
		 * If the remote server is pre-8.4, it won't have IntervalStyle, but
		 * that's okay because its output format won't be ambiguous.  So just
		 * skip the GUC if we don't get a value for it.  (We might eventually
		 * need more complicated logic with remote-version checks here.)
		 */
		if (remoteVal == NULL)
			continue;

		/*
		 * Avoid GUC-setting overhead if the remote and local GUCs already
		 * have the same value.
		 */
		localVal = FUNC1(gucName, false, false);
		FUNC0(localVal != NULL);

		if (FUNC6(remoteVal, localVal) == 0)
			continue;

		/* Create new GUC nest level if we didn't already */
		if (nestlevel < 0)
			nestlevel = FUNC2();

		/* Apply the option (this will throw error on failure) */
		(void) FUNC5(gucName, remoteVal,
								 PGC_USERSET, PGC_S_SESSION,
								 GUC_ACTION_SAVE, true, 0, false);
	}

	return nestlevel;
}