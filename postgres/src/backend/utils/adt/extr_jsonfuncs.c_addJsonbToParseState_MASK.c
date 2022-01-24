#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  root; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_11__ {TYPE_1__ contVal; } ;
typedef  TYPE_1__ JsonbValue ;
typedef  TYPE_2__ JsonbParseState ;
typedef  scalar_t__ JsonbIteratorToken ;
typedef  int /*<<< orphan*/  JsonbIterator ;
typedef  TYPE_3__ Jsonb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,TYPE_1__*,int) ; 
 scalar_t__ WJB_DONE ; 
 scalar_t__ WJB_ELEM ; 
 scalar_t__ WJB_KEY ; 
 scalar_t__ WJB_VALUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
#define  jbvArray 129 
#define  jbvObject 128 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC6(JsonbParseState **jbps, Jsonb *jb)
{
	JsonbIterator *it;
	JsonbValue *o = &(*jbps)->contVal;
	JsonbValue	v;
	JsonbIteratorToken type;

	it = FUNC2(&jb->root);

	FUNC0(o->type == jbvArray || o->type == jbvObject);

	if (FUNC1(jb))
	{
		(void) FUNC3(&it, &v, false);	/* skip array header */
		FUNC0(v.type == jbvArray);
		(void) FUNC3(&it, &v, false);	/* fetch scalar value */

		switch (o->type)
		{
			case jbvArray:
				(void) FUNC5(jbps, WJB_ELEM, &v);
				break;
			case jbvObject:
				(void) FUNC5(jbps, WJB_VALUE, &v);
				break;
			default:
				FUNC4(ERROR, "unexpected parent of nested structure");
		}
	}
	else
	{
		while ((type = FUNC3(&it, &v, false)) != WJB_DONE)
		{
			if (type == WJB_KEY || type == WJB_VALUE || type == WJB_ELEM)
				(void) FUNC5(jbps, type, &v);
			else
				(void) FUNC5(jbps, type, NULL);
		}
	}

}