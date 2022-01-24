#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct TYPE_10__ {TYPE_1__ binary; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ val; } ;
typedef  TYPE_3__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonbParseState ;
typedef  scalar_t__ JsonbIteratorToken ;
typedef  int /*<<< orphan*/  JsonbIterator ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,TYPE_3__*,int) ; 
 scalar_t__ WJB_BEGIN_ARRAY ; 
 scalar_t__ WJB_DONE ; 
 scalar_t__ WJB_ELEM ; 
 scalar_t__ WJB_VALUE ; 
 scalar_t__ jbvBinary ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ **,scalar_t__,TYPE_3__*) ; 

JsonbValue *
FUNC3(JsonbParseState **pstate, JsonbIteratorToken seq,
			   JsonbValue *jbval)
{
	JsonbIterator *it;
	JsonbValue *res = NULL;
	JsonbValue	v;
	JsonbIteratorToken tok;

	if (!jbval || (seq != WJB_ELEM && seq != WJB_VALUE) ||
		jbval->type != jbvBinary)
	{
		/* drop through */
		return FUNC2(pstate, seq, jbval);
	}

	/* unpack the binary and add each piece to the pstate */
	it = FUNC0(jbval->val.binary.data);
	while ((tok = FUNC1(&it, &v, false)) != WJB_DONE)
		res = FUNC2(pstate, tok,
								   tok < WJB_BEGIN_ARRAY ? &v : NULL);

	return res;
}