#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  jsonb_cont; int /*<<< orphan*/  json_hash; } ;
struct TYPE_19__ {TYPE_3__ val; scalar_t__ is_json; } ;
struct TYPE_12__ {scalar_t__ len; int /*<<< orphan*/  str; } ;
struct TYPE_13__ {TYPE_6__* jsonb; TYPE_1__ json; } ;
struct TYPE_18__ {TYPE_2__ val; scalar_t__ is_json; } ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
struct TYPE_16__ {TYPE_4__ binary; } ;
struct TYPE_17__ {scalar_t__ type; TYPE_5__ val; } ;
typedef  TYPE_6__ JsonbValue ;
typedef  TYPE_7__ JsValue ;
typedef  TYPE_8__ JsObject ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 scalar_t__ jbvBinary ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(JsValue *jsv, JsObject *jso)
{
	jso->is_json = jsv->is_json;

	if (jsv->is_json)
	{
		/* convert plain-text json into a hash table */
		jso->val.json_hash =
			FUNC6(jsv->val.json.str,
									jsv->val.json.len >= 0
									? jsv->val.json.len
									: FUNC7(jsv->val.json.str),
									"populate_composite");
	}
	else
	{
		JsonbValue *jbv = jsv->val.jsonb;

		if (jbv->type == jbvBinary &&
			FUNC1(jbv->val.binary.data))
		{
			jso->val.jsonb_cont = jbv->val.binary.data;
		}
		else
		{
			bool		is_scalar;

			is_scalar = FUNC0(jbv) ||
				(jbv->type == jbvBinary &&
				 FUNC2(jbv->val.binary.data));
			FUNC3(ERROR,
					(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
					 is_scalar
					 ? FUNC5("cannot call %s on a scalar",
							  "populate_composite")
					 : FUNC5("cannot call %s on an array",
							  "populate_composite")));
		}
	}
}