#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tg_event; } ;
typedef  TYPE_1__ TriggerData ;
struct TYPE_6__ {scalar_t__ context; } ;
typedef  TYPE_2__* FunctionCallInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED ; 
 int /*<<< orphan*/  ERROR ; 
#define  RI_TRIGTYPE_DELETE 130 
#define  RI_TRIGTYPE_INSERT 129 
#define  RI_TRIGTYPE_UPDATE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 

__attribute__((used)) static void
FUNC9(FunctionCallInfo fcinfo, const char *funcname, int tgkind)
{
	TriggerData *trigdata = (TriggerData *) fcinfo->context;

	if (!FUNC0(fcinfo))
		FUNC6(ERROR,
				(FUNC7(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
				 FUNC8("function \"%s\" was not called by trigger manager", funcname)));

	/*
	 * Check proper event
	 */
	if (!FUNC1(trigdata->tg_event) ||
		!FUNC5(trigdata->tg_event))
		FUNC6(ERROR,
				(FUNC7(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
				 FUNC8("function \"%s\" must be fired AFTER ROW", funcname)));

	switch (tgkind)
	{
		case RI_TRIGTYPE_INSERT:
			if (!FUNC3(trigdata->tg_event))
				FUNC6(ERROR,
						(FUNC7(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
						 FUNC8("function \"%s\" must be fired for INSERT", funcname)));
			break;
		case RI_TRIGTYPE_UPDATE:
			if (!FUNC4(trigdata->tg_event))
				FUNC6(ERROR,
						(FUNC7(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
						 FUNC8("function \"%s\" must be fired for UPDATE", funcname)));
			break;
		case RI_TRIGTYPE_DELETE:
			if (!FUNC2(trigdata->tg_event))
				FUNC6(ERROR,
						(FUNC7(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
						 FUNC8("function \"%s\" must be fired for DELETE", funcname)));
			break;
	}
}