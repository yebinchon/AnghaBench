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
struct TYPE_6__ {scalar_t__ hwtstamp; scalar_t__ swtstamp; scalar_t__ tstampns; scalar_t__ tstamp; } ;
struct TYPE_5__ {int so_timestamping; scalar_t__ so_timestampns; scalar_t__ so_timestamp; } ;
struct test_case {TYPE_2__ expected; TYPE_1__ sockopt; } ;
struct TYPE_7__ {int mask; char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_3__* sof_flags ; 

void FUNC2(struct test_case *t)
{
	int f = 0;

	FUNC1("sockopts {");
	if (t->sockopt.so_timestamp)
		FUNC1(" SO_TIMESTAMP ");
	if (t->sockopt.so_timestampns)
		FUNC1(" SO_TIMESTAMPNS ");
	if (t->sockopt.so_timestamping) {
		FUNC1(" SO_TIMESTAMPING: {");
		for (f = 0; f < FUNC0(sof_flags); f++)
			if (t->sockopt.so_timestamping & sof_flags[f].mask)
				FUNC1(" %s |", sof_flags[f].name);
		FUNC1("}");
	}
	FUNC1("} expected cmsgs: {");
	if (t->expected.tstamp)
		FUNC1(" SCM_TIMESTAMP ");
	if (t->expected.tstampns)
		FUNC1(" SCM_TIMESTAMPNS ");
	if (t->expected.swtstamp || t->expected.hwtstamp) {
		FUNC1(" SCM_TIMESTAMPING {");
		if (t->expected.swtstamp)
			FUNC1("0");
		if (t->expected.swtstamp && t->expected.hwtstamp)
			FUNC1(",");
		if (t->expected.hwtstamp)
			FUNC1("2");
		FUNC1("}");
	}
	FUNC1("}\n");
}