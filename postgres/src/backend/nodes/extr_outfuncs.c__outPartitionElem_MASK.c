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
typedef  int /*<<< orphan*/  PartitionElem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  collation ; 
 int /*<<< orphan*/  expr ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  opclass ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const PartitionElem *node)
{
	FUNC2("PARTITIONELEM");

	FUNC3(name);
	FUNC1(expr);
	FUNC1(collation);
	FUNC1(opclass);
	FUNC0(location);
}