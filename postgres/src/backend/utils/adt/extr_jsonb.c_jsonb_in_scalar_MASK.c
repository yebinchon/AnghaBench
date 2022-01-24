#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int rawScalar; int nElems; } ;
struct TYPE_8__ {char* val; int /*<<< orphan*/  len; } ;
struct TYPE_10__ {int boolean; TYPE_2__ array; int /*<<< orphan*/  numeric; TYPE_1__ string; } ;
struct TYPE_11__ {int type; TYPE_3__ val; } ;
struct TYPE_13__ {TYPE_4__ contVal; } ;
struct TYPE_12__ {TYPE_6__* parseState; void* res; } ;
typedef  TYPE_4__ JsonbValue ;
typedef  TYPE_5__ JsonbInState ;
typedef  int JsonTokenType ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  InvalidOid ; 
#define  JSON_TOKEN_FALSE 134 
#define  JSON_TOKEN_NULL 133 
#define  JSON_TOKEN_NUMBER 132 
#define  JSON_TOKEN_STRING 131 
#define  JSON_TOKEN_TRUE 130 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WJB_BEGIN_ARRAY ; 
 int /*<<< orphan*/  WJB_ELEM ; 
 int /*<<< orphan*/  WJB_END_ARRAY ; 
 int /*<<< orphan*/  WJB_VALUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
#define  jbvArray 129 
 void* jbvBool ; 
 int jbvNull ; 
 int jbvNumeric ; 
#define  jbvObject 128 
 int jbvString ; 
 int /*<<< orphan*/  numeric_in ; 
 void* FUNC8 (TYPE_6__**,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(void *pstate, char *token, JsonTokenType tokentype)
{
	JsonbInState *_state = (JsonbInState *) pstate;
	JsonbValue	v;
	Datum		numd;

	switch (tokentype)
	{

		case JSON_TOKEN_STRING:
			FUNC0(token != NULL);
			v.type = jbvString;
			v.val.string.len = FUNC6(FUNC9(token));
			v.val.string.val = token;
			break;
		case JSON_TOKEN_NUMBER:

			/*
			 * No need to check size of numeric values, because maximum
			 * numeric size is well below the JsonbValue restriction
			 */
			FUNC0(token != NULL);
			v.type = jbvNumeric;
			numd = FUNC3(numeric_in,
									   FUNC1(token),
									   FUNC5(InvalidOid),
									   FUNC4(-1));
			v.val.numeric = FUNC2(numd);
			break;
		case JSON_TOKEN_TRUE:
			v.type = jbvBool;
			v.val.boolean = true;
			break;
		case JSON_TOKEN_FALSE:
			v.type = jbvBool;
			v.val.boolean = false;
			break;
		case JSON_TOKEN_NULL:
			v.type = jbvNull;
			break;
		default:
			/* should not be possible */
			FUNC7(ERROR, "invalid json token type");
			break;
	}

	if (_state->parseState == NULL)
	{
		/* single scalar */
		JsonbValue	va;

		va.type = jbvArray;
		va.val.array.rawScalar = true;
		va.val.array.nElems = 1;

		_state->res = FUNC8(&_state->parseState, WJB_BEGIN_ARRAY, &va);
		_state->res = FUNC8(&_state->parseState, WJB_ELEM, &v);
		_state->res = FUNC8(&_state->parseState, WJB_END_ARRAY, NULL);
	}
	else
	{
		JsonbValue *o = &_state->parseState->contVal;

		switch (o->type)
		{
			case jbvArray:
				_state->res = FUNC8(&_state->parseState, WJB_ELEM, &v);
				break;
			case jbvObject:
				_state->res = FUNC8(&_state->parseState, WJB_VALUE, &v);
				break;
			default:
				FUNC7(ERROR, "unexpected parent of nested structure");
		}
	}
}