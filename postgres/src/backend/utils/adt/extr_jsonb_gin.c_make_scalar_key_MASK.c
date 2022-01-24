#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* val; int len; } ;
struct TYPE_6__ {TYPE_1__ string; int /*<<< orphan*/  numeric; int /*<<< orphan*/  boolean; } ;
struct TYPE_7__ {int type; TYPE_2__ val; } ;
typedef  TYPE_3__ JsonbValue ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  JGINFLAG_BOOL ; 
 int /*<<< orphan*/  JGINFLAG_KEY ; 
 int /*<<< orphan*/  JGINFLAG_NULL ; 
 int /*<<< orphan*/  JGINFLAG_NUM ; 
 int /*<<< orphan*/  JGINFLAG_STR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
#define  jbvBool 131 
#define  jbvNull 130 
#define  jbvNumeric 129 
#define  jbvString 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static Datum
FUNC6(const JsonbValue *scalarVal, bool is_key)
{
	Datum		item;
	char	   *cstr;

	switch (scalarVal->type)
	{
		case jbvNull:
			FUNC0(!is_key);
			item = FUNC2(JGINFLAG_NULL, "", 0);
			break;
		case jbvBool:
			FUNC0(!is_key);
			item = FUNC2(JGINFLAG_BOOL,
								 scalarVal->val.boolean ? "t" : "f", 1);
			break;
		case jbvNumeric:
			FUNC0(!is_key);

			/*
			 * A normalized textual representation, free of trailing zeroes,
			 * is required so that numerically equal values will produce equal
			 * strings.
			 *
			 * It isn't ideal that numerics are stored in a relatively bulky
			 * textual format.  However, it's a notationally convenient way of
			 * storing a "union" type in the GIN B-Tree, and indexing Jsonb
			 * strings takes precedence.
			 */
			cstr = FUNC3(scalarVal->val.numeric);
			item = FUNC2(JGINFLAG_NUM, cstr, FUNC5(cstr));
			FUNC4(cstr);
			break;
		case jbvString:
			item = FUNC2(is_key ? JGINFLAG_KEY : JGINFLAG_STR,
								 scalarVal->val.string.val,
								 scalarVal->val.string.len);
			break;
		default:
			FUNC1(ERROR, "unrecognized jsonb scalar type: %d", scalarVal->type);
			item = 0;			/* keep compiler quiet */
			break;
	}

	return item;
}