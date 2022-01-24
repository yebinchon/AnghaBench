#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* rcPath; struct TYPE_8__* prjName; int /*<<< orphan*/  core; } ;
struct TYPE_7__ {TYPE_2__* user; } ;
typedef  int /*<<< orphan*/  RThreadFunctionRet ;
typedef  TYPE_1__ RThread ;
typedef  TYPE_2__ ProjectState ;

/* Variables and functions */
 int /*<<< orphan*/  R_TH_STOP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static RThreadFunctionRet FUNC2(RThread *th) {
	ProjectState *ps = th->user;
	FUNC1 (ps->core, ps->prjName, ps->rcPath);
	FUNC0 (ps->prjName);
	FUNC0 (ps->rcPath);
	FUNC0 (ps);
	return R_TH_STOP;
}