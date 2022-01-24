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
typedef  TYPE_1__* pg_locale_t ;
struct TYPE_3__ {int /*<<< orphan*/  deterministic; } ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 scalar_t__ DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (char const*,int,char const*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ PG_UTF8 ; 
 int FUNC2 (char const*,int,char const*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,int,char const*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 () ; 
 TYPE_1__* FUNC9 (scalar_t__) ; 

__attribute__((used)) static inline int
FUNC10(const char *s, int slen, const char *p, int plen, Oid collation)
{
	if (collation && !FUNC7(collation) && collation != DEFAULT_COLLATION_OID)
	{
		pg_locale_t locale = FUNC9(collation);

		if (locale && !locale->deterministic)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC6("nondeterministic collations are not supported for LIKE")));
	}

	if (FUNC8() == 1)
		return FUNC2(s, slen, p, plen, 0, true);
	else if (FUNC0() == PG_UTF8)
		return FUNC3(s, slen, p, plen, 0, true);
	else
		return FUNC1(s, slen, p, plen, 0, true);
}