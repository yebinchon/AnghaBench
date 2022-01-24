#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * search_path; void* right_arg; void* left_arg; int /*<<< orphan*/  oprname; } ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  ParseCallbackState ;
typedef  TYPE_1__ OprCacheKey ;
typedef  void* Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ MAX_CACHED_PATH_LEN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(ParseState *pstate, OprCacheKey *key, List *opname,
					Oid ltypeId, Oid rtypeId, int location)
{
	char	   *schemaname;
	char	   *opername;

	/* deconstruct the name list */
	FUNC0(opname, &schemaname, &opername);

	/* ensure zero-fill for stable hashing */
	FUNC2(key, 0, sizeof(OprCacheKey));

	/* save operator name and input types into key */
	FUNC6(key->oprname, opername, NAMEDATALEN);
	key->left_arg = ltypeId;
	key->right_arg = rtypeId;

	if (schemaname)
	{
		ParseCallbackState pcbstate;

		/* search only in exact schema given */
		FUNC5(&pcbstate, pstate, location);
		key->search_path[0] = FUNC1(schemaname, false);
		FUNC3(&pcbstate);
	}
	else
	{
		/* get the active search path */
		if (FUNC4(key->search_path,
									MAX_CACHED_PATH_LEN) > MAX_CACHED_PATH_LEN)
			return false;		/* oops, didn't fit */
	}

	return true;
}