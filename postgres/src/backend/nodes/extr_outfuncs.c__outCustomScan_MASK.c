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
struct TYPE_5__ {TYPE_1__* methods; } ;
struct TYPE_4__ {int /*<<< orphan*/  CustomName; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Scan ;
typedef  TYPE_2__ CustomScan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  custom_exprs ; 
 int /*<<< orphan*/  custom_plans ; 
 int /*<<< orphan*/  custom_private ; 
 int /*<<< orphan*/  custom_relids ; 
 int /*<<< orphan*/  custom_scan_tlist ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const CustomScan *node)
{
	FUNC2("CUSTOMSCAN");

	FUNC4(str, (const Scan *) node);

	FUNC3(flags);
	FUNC1(custom_plans);
	FUNC1(custom_exprs);
	FUNC1(custom_private);
	FUNC1(custom_scan_tlist);
	FUNC0(custom_relids);
	/* CustomName is a key to lookup CustomScanMethods */
	FUNC5(str, " :methods ");
	FUNC6(str, node->methods->CustomName);
}