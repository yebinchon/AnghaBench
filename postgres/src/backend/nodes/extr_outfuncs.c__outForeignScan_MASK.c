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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Scan ;
typedef  int /*<<< orphan*/  ForeignScan ;

/* Variables and functions */
 int /*<<< orphan*/  CmdType ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  fdw_exprs ; 
 int /*<<< orphan*/  fdw_private ; 
 int /*<<< orphan*/  fdw_recheck_quals ; 
 int /*<<< orphan*/  fdw_scan_tlist ; 
 int /*<<< orphan*/  fsSystemCol ; 
 int /*<<< orphan*/  fs_relids ; 
 int /*<<< orphan*/  fs_server ; 
 int /*<<< orphan*/  operation ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const ForeignScan *node)
{
	FUNC4("FOREIGNSCAN");

	FUNC6(str, (const Scan *) node);

	FUNC2(operation, CmdType);
	FUNC5(fs_server);
	FUNC3(fdw_exprs);
	FUNC3(fdw_private);
	FUNC3(fdw_scan_tlist);
	FUNC3(fdw_recheck_quals);
	FUNC0(fs_relids);
	FUNC1(fsSystemCol);
}