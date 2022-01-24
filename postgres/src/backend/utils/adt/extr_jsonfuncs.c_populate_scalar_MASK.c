#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_28__ {int /*<<< orphan*/  root; } ;
struct TYPE_23__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
struct TYPE_22__ {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
struct TYPE_24__ {TYPE_4__ binary; int /*<<< orphan*/  numeric; scalar_t__ boolean; TYPE_3__ string; } ;
struct TYPE_27__ {scalar_t__ type; TYPE_5__ val; } ;
struct TYPE_26__ {int /*<<< orphan*/  typioparam; int /*<<< orphan*/  typiofunc; } ;
struct TYPE_25__ {char* data; } ;
struct TYPE_20__ {int len; char* str; scalar_t__ type; } ;
struct TYPE_21__ {TYPE_8__* jsonb; TYPE_1__ json; } ;
struct TYPE_19__ {TYPE_2__ val; scalar_t__ is_json; } ;
typedef  TYPE_6__ StringInfoData ;
typedef  TYPE_7__ ScalarIOData ;
typedef  scalar_t__ Oid ;
typedef  TYPE_8__ JsonbValue ;
typedef  TYPE_9__ Jsonb ;
typedef  TYPE_10__ JsValue ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ JSONBOID ; 
 scalar_t__ JSONOID ; 
 scalar_t__ JSON_TOKEN_STRING ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC6 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 scalar_t__ jbvBinary ; 
 scalar_t__ jbvBool ; 
 scalar_t__ jbvNumeric ; 
 scalar_t__ jbvString ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  numeric_out ; 
 char* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC16 (char*) ; 

__attribute__((used)) static Datum
FUNC17(ScalarIOData *io, Oid typid, int32 typmod, JsValue *jsv)
{
	Datum		res;
	char	   *str = NULL;
	char	   *json = NULL;

	if (jsv->is_json)
	{
		int			len = jsv->val.json.len;

		json = jsv->val.json.str;
		FUNC0(json);
		if (len >= 0)
		{
			/* Need to copy non-null-terminated string */
			str = FUNC13(len + 1 * sizeof(char));
			FUNC12(str, json, len);
			str[len] = '\0';
		}
		else
			str = json;			/* string is already null-terminated */

		/* If converting to json/jsonb, make string into valid JSON literal */
		if ((typid == JSONOID || typid == JSONBOID) &&
			jsv->val.json.type == JSON_TOKEN_STRING)
		{
			StringInfoData buf;

			FUNC11(&buf);
			FUNC10(&buf, str);
			/* free temporary buffer */
			if (str != json)
				FUNC14(str);
			str = buf.data;
		}
	}
	else
	{
		JsonbValue *jbv = jsv->val.jsonb;

		if (typid == JSONBOID)
		{
			Jsonb	   *jsonb = FUNC6(jbv); /* directly use jsonb */

			return FUNC4(jsonb);
		}
		/* convert jsonb to string for typio call */
		else if (typid == JSONOID && jbv->type != jbvBinary)
		{
			/*
			 * Convert scalar jsonb (non-scalars are passed here as jbvBinary)
			 * to json string, preserving quotes around top-level strings.
			 */
			Jsonb	   *jsonb = FUNC6(jbv);

			str = FUNC5(NULL, &jsonb->root, FUNC8(jsonb));
		}
		else if (jbv->type == jbvString)	/* quotes are stripped */
			str = FUNC15(jbv->val.string.val, jbv->val.string.len);
		else if (jbv->type == jbvBool)
			str = FUNC16(jbv->val.boolean ? "true" : "false");
		else if (jbv->type == jbvNumeric)
			str = FUNC1(FUNC2(numeric_out,
													  FUNC7(jbv->val.numeric)));
		else if (jbv->type == jbvBinary)
			str = FUNC5(NULL, jbv->val.binary.data,
								 jbv->val.binary.len);
		else
			FUNC9(ERROR, "unrecognized jsonb type: %d", (int) jbv->type);
	}

	res = FUNC3(&io->typiofunc, str, io->typioparam, typmod);

	/* free temporary buffer */
	if (str != json)
		FUNC14(str);

	return res;
}