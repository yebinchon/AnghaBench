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
typedef  int /*<<< orphan*/  Join ;
typedef  int /*<<< orphan*/  HashJoin ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  hashclauses ; 
 int /*<<< orphan*/  hashcollations ; 
 int /*<<< orphan*/  hashkeys ; 
 int /*<<< orphan*/  hashoperators ; 

__attribute__((used)) static void
FUNC3(StringInfo str, const HashJoin *node)
{
	FUNC1("HASHJOIN");

	FUNC2(str, (const Join *) node);

	FUNC0(hashclauses);
	FUNC0(hashoperators);
	FUNC0(hashcollations);
	FUNC0(hashkeys);
}