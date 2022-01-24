#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nPairs; TYPE_5__* pairs; } ;
struct TYPE_10__ {TYPE_1__ object; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ val; } ;
struct TYPE_13__ {size_t order; TYPE_3__ key; } ;
struct TYPE_12__ {int size; TYPE_3__ contVal; } ;
typedef  TYPE_3__ JsonbValue ;
typedef  TYPE_4__ JsonbParseState ;
typedef  int /*<<< orphan*/  JsonbPair ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int JSONB_MAX_PAIRS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ jbvObject ; 
 scalar_t__ jbvString ; 
 TYPE_5__* FUNC4 (TYPE_5__*,int) ; 

__attribute__((used)) static void
FUNC5(JsonbParseState *pstate, JsonbValue *string)
{
	JsonbValue *object = &pstate->contVal;

	FUNC0(object->type == jbvObject);
	FUNC0(string->type == jbvString);

	if (object->val.object.nPairs >= JSONB_MAX_PAIRS)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC3("number of jsonb object pairs exceeds the maximum allowed (%zu)",
						JSONB_MAX_PAIRS)));

	if (object->val.object.nPairs >= pstate->size)
	{
		pstate->size *= 2;
		object->val.object.pairs = FUNC4(object->val.object.pairs,
											sizeof(JsonbPair) * pstate->size);
	}

	object->val.object.pairs[object->val.object.nPairs].key = *string;
	object->val.object.pairs[object->val.object.nPairs].order = object->val.object.nPairs;
}