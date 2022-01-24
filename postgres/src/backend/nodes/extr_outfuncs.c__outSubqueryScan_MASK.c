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
typedef  int /*<<< orphan*/  SubqueryScan ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Scan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  subplan ; 

__attribute__((used)) static void
FUNC3(StringInfo str, const SubqueryScan *node)
{
	FUNC1("SUBQUERYSCAN");

	FUNC2(str, (const Scan *) node);

	FUNC0(subplan);
}