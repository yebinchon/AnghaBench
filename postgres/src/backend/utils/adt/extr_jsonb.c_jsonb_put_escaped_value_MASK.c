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
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
struct TYPE_6__ {int /*<<< orphan*/  boolean; int /*<<< orphan*/  numeric; TYPE_1__ string; } ;
struct TYPE_7__ {int type; TYPE_2__ val; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_3__ JsonbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  jbvBool 131 
#define  jbvNull 130 
#define  jbvNumeric 129 
#define  jbvString 128 
 int /*<<< orphan*/  numeric_out ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(StringInfo out, JsonbValue *scalarVal)
{
	switch (scalarVal->type)
	{
		case jbvNull:
			FUNC3(out, "null", 4);
			break;
		case jbvString:
			FUNC6(out, FUNC7(scalarVal->val.string.val, scalarVal->val.string.len));
			break;
		case jbvNumeric:
			FUNC4(out,
								   FUNC0(FUNC1(numeric_out,
																	   FUNC2(scalarVal->val.numeric))));
			break;
		case jbvBool:
			if (scalarVal->val.boolean)
				FUNC3(out, "true", 4);
			else
				FUNC3(out, "false", 5);
			break;
		default:
			FUNC5(ERROR, "unknown jsonb scalar type");
	}
}