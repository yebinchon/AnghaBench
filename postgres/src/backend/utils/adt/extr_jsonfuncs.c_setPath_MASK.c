#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  nPairs; } ;
struct TYPE_9__ {int /*<<< orphan*/  nElems; } ;
struct TYPE_11__ {TYPE_2__ object; TYPE_1__ array; } ;
struct TYPE_12__ {TYPE_3__ val; } ;
typedef  TYPE_4__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonbParseState ;
typedef  int JsonbIteratorToken ;
typedef  int /*<<< orphan*/  JsonbIterator ;
typedef  int /*<<< orphan*/  Jsonb ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 (int /*<<< orphan*/ **,TYPE_4__*,int) ; 
#define  WJB_BEGIN_ARRAY 131 
#define  WJB_BEGIN_OBJECT 130 
#define  WJB_ELEM 129 
 int WJB_END_ARRAY ; 
 int WJB_END_OBJECT ; 
#define  WJB_VALUE 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ **,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static JsonbValue *
FUNC10(JsonbIterator **it, Datum *path_elems,
		bool *path_nulls, int path_len,
		JsonbParseState **st, int level, Jsonb *newval, int op_type)
{
	JsonbValue	v;
	JsonbIteratorToken r;
	JsonbValue *res;

	FUNC2();

	if (path_nulls[level])
		FUNC4(ERROR,
				(FUNC5(ERRCODE_NULL_VALUE_NOT_ALLOWED),
				 FUNC6("path element at position %d is null",
						level + 1)));

	r = FUNC1(it, &v, false);

	switch (r)
	{
		case WJB_BEGIN_ARRAY:
			(void) FUNC7(st, r, NULL);
			FUNC8(it, path_elems, path_nulls, path_len, st, level,
						 newval, v.val.array.nElems, op_type);
			r = FUNC1(it, &v, false);
			FUNC0(r == WJB_END_ARRAY);
			res = FUNC7(st, r, NULL);
			break;
		case WJB_BEGIN_OBJECT:
			(void) FUNC7(st, r, NULL);
			FUNC9(it, path_elems, path_nulls, path_len, st, level,
						  newval, v.val.object.nPairs, op_type);
			r = FUNC1(it, &v, true);
			FUNC0(r == WJB_END_OBJECT);
			res = FUNC7(st, r, NULL);
			break;
		case WJB_ELEM:
		case WJB_VALUE:
			res = FUNC7(st, r, &v);
			break;
		default:
			FUNC3(ERROR, "unrecognized iterator result: %d", (int) r);
			res = NULL;			/* keep compiler quiet */
			break;
	}

	return res;
}