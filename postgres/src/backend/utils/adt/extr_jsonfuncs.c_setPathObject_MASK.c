#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_6__ {scalar_t__ len; void* val; } ;
struct TYPE_7__ {TYPE_1__ string; } ;
struct TYPE_8__ {TYPE_2__ val; void* type; } ;
typedef  TYPE_3__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonbParseState ;
typedef  scalar_t__ JsonbIteratorToken ;
typedef  int /*<<< orphan*/  JsonbIterator ;
typedef  int /*<<< orphan*/  Jsonb ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int JB_PATH_CREATE_OR_INSERT ; 
 int JB_PATH_DELETE ; 
 int JB_PATH_INSERT_AFTER ; 
 int JB_PATH_INSERT_BEFORE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,TYPE_3__*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ WJB_BEGIN_ARRAY ; 
 scalar_t__ WJB_BEGIN_OBJECT ; 
 scalar_t__ WJB_END_ARRAY ; 
 scalar_t__ WJB_END_OBJECT ; 
 scalar_t__ WJB_KEY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 void* jbvString ; 
 scalar_t__ FUNC9 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC12(JsonbIterator **it, Datum *path_elems, bool *path_nulls,
			  int path_len, JsonbParseState **st, int level,
			  Jsonb *newval, uint32 npairs, int op_type)
{
	JsonbValue	v;
	int			i;
	JsonbValue	k;
	bool		done = false;

	if (level >= path_len || path_nulls[level])
		done = true;

	/* empty object is a special case for create */
	if ((npairs == 0) && (op_type & JB_PATH_CREATE_OR_INSERT) &&
		(level == path_len - 1))
	{
		JsonbValue	newkey;

		newkey.type = jbvString;
		newkey.val.string.len = FUNC3(path_elems[level]);
		newkey.val.string.val = FUNC2(path_elems[level]);

		(void) FUNC10(st, WJB_KEY, &newkey);
		FUNC4(st, newval);
	}

	for (i = 0; i < npairs; i++)
	{
		JsonbIteratorToken r = FUNC1(it, &k, true);

		FUNC0(r == WJB_KEY);

		if (!done &&
			k.val.string.len == FUNC3(path_elems[level]) &&
			FUNC9(k.val.string.val, FUNC2(path_elems[level]),
				   k.val.string.len) == 0)
		{
			if (level == path_len - 1)
			{
				/*
				 * called from jsonb_insert(), it forbids redefining an
				 * existing value
				 */
				if (op_type & (JB_PATH_INSERT_BEFORE | JB_PATH_INSERT_AFTER))
					FUNC5(ERROR,
							(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC8("cannot replace existing key"),
							 FUNC7("Try using the function jsonb_set "
									 "to replace key value.")));

				r = FUNC1(it, &v, true);	/* skip value */
				if (!(op_type & JB_PATH_DELETE))
				{
					(void) FUNC10(st, WJB_KEY, &k);
					FUNC4(st, newval);
				}
				done = true;
			}
			else
			{
				(void) FUNC10(st, r, &k);
				FUNC11(it, path_elems, path_nulls, path_len,
						st, level + 1, newval, op_type);
			}
		}
		else
		{
			if ((op_type & JB_PATH_CREATE_OR_INSERT) && !done &&
				level == path_len - 1 && i == npairs - 1)
			{
				JsonbValue	newkey;

				newkey.type = jbvString;
				newkey.val.string.len = FUNC3(path_elems[level]);
				newkey.val.string.val = FUNC2(path_elems[level]);

				(void) FUNC10(st, WJB_KEY, &newkey);
				FUNC4(st, newval);
			}

			(void) FUNC10(st, r, &k);
			r = FUNC1(it, &v, false);
			(void) FUNC10(st, r, r < WJB_BEGIN_ARRAY ? &v : NULL);
			if (r == WJB_BEGIN_ARRAY || r == WJB_BEGIN_OBJECT)
			{
				int			walking_level = 1;

				while (walking_level != 0)
				{
					r = FUNC1(it, &v, false);

					if (r == WJB_BEGIN_ARRAY || r == WJB_BEGIN_OBJECT)
						++walking_level;
					if (r == WJB_END_ARRAY || r == WJB_END_OBJECT)
						--walking_level;

					(void) FUNC10(st, r, r < WJB_BEGIN_ARRAY ? &v : NULL);
				}
			}
		}
	}
}