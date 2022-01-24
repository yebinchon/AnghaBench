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
typedef  int /*<<< orphan*/  text ;
struct TYPE_10__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {char* val; int len; } ;
struct TYPE_11__ {TYPE_2__ binary; int /*<<< orphan*/  numeric; TYPE_1__ string; int /*<<< orphan*/  boolean; } ;
struct TYPE_13__ {int type; TYPE_3__ val; } ;
struct TYPE_12__ {char* data; int len; } ;
typedef  TYPE_4__ StringInfoData ;
typedef  TYPE_5__ JsonbValue ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
#define  jbvBinary 132 
#define  jbvBool 131 
#define  jbvNull 130 
#define  jbvNumeric 129 
#define  jbvString 128 
 int /*<<< orphan*/  numeric_out ; 

__attribute__((used)) static text *
FUNC8(JsonbValue *v)
{
	switch (v->type)
	{
		case jbvNull:
			return NULL;

		case jbvBool:
			return v->val.boolean ?
				FUNC5("true", 4) :
				FUNC5("false", 5);

		case jbvString:
			return FUNC5(v->val.string.val,
											v->val.string.len);

		case jbvNumeric:
			{
				Datum		cstr;

				cstr = FUNC1(numeric_out,
										   FUNC3(v->val.numeric));

				return FUNC4(FUNC0(cstr));
			}

		case jbvBinary:
			{
				StringInfoData jtext;

				FUNC7(&jtext);
				(void) FUNC2(&jtext, v->val.binary.data,
									  v->val.binary.len);

				return FUNC5(jtext.data, jtext.len);
			}

		default:
			FUNC6(ERROR, "unrecognized jsonb type: %d", (int) v->type);
			return NULL;
	}
}