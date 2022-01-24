#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tzstate ;
struct state {int dummy; } ;
struct TYPE_5__ {char* TZname; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {TYPE_2__ tz; } ;
typedef  TYPE_1__ pg_tz_cache ;
typedef  TYPE_2__ pg_tz ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int TZ_STRLEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct state*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  timezone_cache ; 
 scalar_t__ FUNC8 (char*,char*,struct state*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct state*,int) ; 

pg_tz *
FUNC10(const char *name)
{
	pg_tz_cache *tzp;
	struct state tzstate;
	char		uppername[TZ_STRLEN_MAX + 1];
	char		canonname[TZ_STRLEN_MAX + 1];
	char	   *p;

	if (FUNC7(name) > TZ_STRLEN_MAX)
		return NULL;			/* not going to fit */

	if (!timezone_cache)
		if (!FUNC2())
			return NULL;

	/*
	 * Upcase the given name to perform a case-insensitive hashtable search.
	 * (We could alternatively downcase it, but we prefer upcase so that we
	 * can get consistently upcased results from tzparse() in case the name is
	 * a POSIX-style timezone spec.)
	 */
	p = uppername;
	while (*name)
		*p++ = FUNC4((unsigned char) *name++);
	*p = '\0';

	tzp = (pg_tz_cache *) FUNC1(timezone_cache,
									  uppername,
									  HASH_FIND,
									  NULL);
	if (tzp)
	{
		/* Timezone found in cache, nothing more to do */
		return &tzp->tz;
	}

	/*
	 * "GMT" is always sent to tzparse(), as per discussion above.
	 */
	if (FUNC5(uppername, "GMT") == 0)
	{
		if (!FUNC9(uppername, &tzstate, true))
		{
			/* This really, really should not happen ... */
			FUNC0(ERROR, "could not initialize GMT time zone");
		}
		/* Use uppercase name as canonical */
		FUNC6(canonname, uppername);
	}
	else if (FUNC8(uppername, canonname, &tzstate, true) != 0)
	{
		if (uppername[0] == ':' || !FUNC9(uppername, &tzstate, false))
		{
			/* Unknown timezone. Fail our call instead of loading GMT! */
			return NULL;
		}
		/* For POSIX timezone specs, use uppercase name as canonical */
		FUNC6(canonname, uppername);
	}

	/* Save timezone in the cache */
	tzp = (pg_tz_cache *) FUNC1(timezone_cache,
									  uppername,
									  HASH_ENTER,
									  NULL);

	/* hash_search already copied uppername into the hash key */
	FUNC6(tzp->tz.TZname, canonname);
	FUNC3(&tzp->tz.state, &tzstate, sizeof(tzstate));

	return &tzp->tz;
}