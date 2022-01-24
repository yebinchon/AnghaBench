#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {void* pairs; int /*<<< orphan*/  nPairs; } ;
struct TYPE_19__ {int rawScalar; int nElems; void* elems; } ;
struct TYPE_21__ {TYPE_2__ object; TYPE_1__ array; } ;
struct TYPE_22__ {int type; TYPE_3__ val; } ;
struct TYPE_23__ {int size; TYPE_4__ contVal; struct TYPE_23__* next; } ;
typedef  TYPE_4__ JsonbValue ;
typedef  TYPE_5__ JsonbParseState ;
typedef  int /*<<< orphan*/  JsonbPair ;
typedef  int JsonbIteratorToken ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 (TYPE_4__*) ; 
#define  WJB_BEGIN_ARRAY 136 
#define  WJB_BEGIN_OBJECT 135 
#define  WJB_ELEM 134 
#define  WJB_END_ARRAY 133 
#define  WJB_END_OBJECT 132 
#define  WJB_KEY 131 
#define  WJB_VALUE 130 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
#define  jbvArray 129 
#define  jbvObject 128 
 int jbvString ; 
 void* FUNC6 (int) ; 
 TYPE_5__* FUNC7 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 

__attribute__((used)) static JsonbValue *
FUNC9(JsonbParseState **pstate, JsonbIteratorToken seq,
					 JsonbValue *scalarVal)
{
	JsonbValue *result = NULL;

	switch (seq)
	{
		case WJB_BEGIN_ARRAY:
			FUNC0(!scalarVal || scalarVal->val.array.rawScalar);
			*pstate = FUNC7(pstate);
			result = &(*pstate)->contVal;
			(*pstate)->contVal.type = jbvArray;
			(*pstate)->contVal.val.array.nElems = 0;
			(*pstate)->contVal.val.array.rawScalar = (scalarVal &&
													  scalarVal->val.array.rawScalar);
			if (scalarVal && scalarVal->val.array.nElems > 0)
			{
				/* Assume that this array is still really a scalar */
				FUNC0(scalarVal->type == jbvArray);
				(*pstate)->size = scalarVal->val.array.nElems;
			}
			else
			{
				(*pstate)->size = 4;
			}
			(*pstate)->contVal.val.array.elems = FUNC6(sizeof(JsonbValue) *
														(*pstate)->size);
			break;
		case WJB_BEGIN_OBJECT:
			FUNC0(!scalarVal);
			*pstate = FUNC7(pstate);
			result = &(*pstate)->contVal;
			(*pstate)->contVal.type = jbvObject;
			(*pstate)->contVal.val.object.nPairs = 0;
			(*pstate)->size = 4;
			(*pstate)->contVal.val.object.pairs = FUNC6(sizeof(JsonbPair) *
														 (*pstate)->size);
			break;
		case WJB_KEY:
			FUNC0(scalarVal->type == jbvString);
			FUNC3(*pstate, scalarVal);
			break;
		case WJB_VALUE:
			FUNC0(FUNC1(scalarVal));
			FUNC4(*pstate, scalarVal);
			break;
		case WJB_ELEM:
			FUNC0(FUNC1(scalarVal));
			FUNC2(*pstate, scalarVal);
			break;
		case WJB_END_OBJECT:
			FUNC8(&(*pstate)->contVal);
			/* fall through! */
		case WJB_END_ARRAY:
			/* Steps here common to WJB_END_OBJECT case */
			FUNC0(!scalarVal);
			result = &(*pstate)->contVal;

			/*
			 * Pop stack and push current array/object as value in parent
			 * array/object
			 */
			*pstate = (*pstate)->next;
			if (*pstate)
			{
				switch ((*pstate)->contVal.type)
				{
					case jbvArray:
						FUNC2(*pstate, result);
						break;
					case jbvObject:
						FUNC4(*pstate, result);
						break;
					default:
						FUNC5(ERROR, "invalid jsonb container type");
				}
			}
			break;
		default:
			FUNC5(ERROR, "unrecognized jsonb sequential processing token");
	}

	return result;
}