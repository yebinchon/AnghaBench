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
typedef  int /*<<< orphan*/  IndexScan ;

/* Variables and functions */
 int /*<<< orphan*/  ScanDirection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  indexid ; 
 int /*<<< orphan*/  indexorderby ; 
 int /*<<< orphan*/  indexorderbyops ; 
 int /*<<< orphan*/  indexorderbyorig ; 
 int /*<<< orphan*/  indexorderdir ; 
 int /*<<< orphan*/  indexqual ; 
 int /*<<< orphan*/  indexqualorig ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const IndexScan *node)
{
	FUNC2("INDEXSCAN");

	FUNC4(str, (const Scan *) node);

	FUNC3(indexid);
	FUNC1(indexqual);
	FUNC1(indexqualorig);
	FUNC1(indexorderby);
	FUNC1(indexorderbyorig);
	FUNC1(indexorderbyops);
	FUNC0(indexorderdir, ScanDirection);
}