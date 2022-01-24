#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  boolean; TYPE_1__ string; int /*<<< orphan*/  numeric; TYPE_2__ binary; } ;
struct TYPE_9__ {int type; TYPE_3__ val; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  TYPE_4__ JsonbValue ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PL_sv_no ; 
 int /*<<< orphan*/  PL_sv_yes ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
#define  jbvBinary 132 
#define  jbvBool 131 
#define  jbvNull 130 
#define  jbvNumeric 129 
#define  jbvString 128 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  numeric_out ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SV  *
FUNC11(JsonbValue *jbv)
{
	dTHX;

	switch (jbv->type)
	{
		case jbvBinary:
			return FUNC2(jbv->val.binary.data);

		case jbvNumeric:
			{
				char	   *str = FUNC0(FUNC1(numeric_out,
																	  FUNC3(jbv->val.numeric)));
				SV		   *result = FUNC8(FUNC4(FUNC5(str)));

				FUNC9(str);
				return result;
			}

		case jbvString:
			{
				char	   *str = FUNC10(jbv->val.string.val,
										   jbv->val.string.len);
				SV		   *result = FUNC5(str);

				FUNC9(str);
				return result;
			}

		case jbvBool:
			return FUNC8(FUNC4(jbv->val.boolean ? &PL_sv_yes : &PL_sv_no));

		case jbvNull:
			return FUNC7(0);

		default:
			FUNC6(ERROR, "unexpected jsonb value type: %d", jbv->type);
			return NULL;
	}
}