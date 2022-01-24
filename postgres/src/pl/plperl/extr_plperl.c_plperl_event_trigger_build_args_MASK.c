#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tag; int /*<<< orphan*/  event; } ;
struct TYPE_4__ {scalar_t__ context; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  HV ;
typedef  TYPE_1__* FunctionCallInfo ;
typedef  TYPE_2__ EventTriggerData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static SV  *
FUNC4(FunctionCallInfo fcinfo)
{
	dTHX;
	EventTriggerData *tdata;
	HV		   *hv;

	hv = FUNC2();

	tdata = (EventTriggerData *) fcinfo->context;

	FUNC1(hv, "event", FUNC0(tdata->event));
	FUNC1(hv, "tag", FUNC0(tdata->tag));

	return FUNC3((SV *) hv);
}