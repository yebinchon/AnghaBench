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
typedef  int /*<<< orphan*/  ParamPathInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ppi_clauses ; 
 int /*<<< orphan*/  ppi_req_outer ; 
 int /*<<< orphan*/  ppi_rows ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const ParamPathInfo *node)
{
	FUNC3("PARAMPATHINFO");

	FUNC0(ppi_req_outer);
	FUNC1(ppi_rows, "%.0f");
	FUNC2(ppi_clauses);
}