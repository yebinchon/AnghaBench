#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AMOPOPID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FOREIGNDATAWRAPPEROID ; 
 int /*<<< orphan*/  FOREIGNSERVEROID ; 
 int /*<<< orphan*/  NAMESPACEOID ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  PlanCacheObjectCallback ; 
 int /*<<< orphan*/  PlanCacheRelCallback ; 
 int /*<<< orphan*/  PlanCacheSysCallback ; 
 int /*<<< orphan*/  TYPEOID ; 

void
FUNC2(void)
{
	FUNC0(PlanCacheRelCallback, (Datum) 0);
	FUNC1(PROCOID, PlanCacheObjectCallback, (Datum) 0);
	FUNC1(TYPEOID, PlanCacheObjectCallback, (Datum) 0);
	FUNC1(NAMESPACEOID, PlanCacheSysCallback, (Datum) 0);
	FUNC1(OPEROID, PlanCacheSysCallback, (Datum) 0);
	FUNC1(AMOPOPID, PlanCacheSysCallback, (Datum) 0);
	FUNC1(FOREIGNSERVEROID, PlanCacheSysCallback, (Datum) 0);
	FUNC1(FOREIGNDATAWRAPPEROID, PlanCacheSysCallback, (Datum) 0);
}