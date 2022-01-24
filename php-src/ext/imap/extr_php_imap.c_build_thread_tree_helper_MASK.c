#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {long num; struct TYPE_3__* branch; struct TYPE_3__* next; } ;
typedef  TYPE_1__ THREADNODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned long) ; 

__attribute__((used)) static void FUNC2(THREADNODE *cur, zval *tree, long *numNodes, char *buf)
{
	unsigned long thisNode = *numNodes;

	/* define "#.num" */
	FUNC1(buf, 25, "%ld.num", thisNode);

	FUNC0(tree, buf, cur->num);

	FUNC1(buf, 25, "%ld.next", thisNode);
	if(cur->next) {
		(*numNodes)++;
		FUNC0(tree, buf, *numNodes);
		FUNC2(cur->next, tree, numNodes, buf);
	} else { /* "null pointer" */
		FUNC0(tree, buf, 0);
	}

	FUNC1(buf, 25, "%ld.branch", thisNode);
	if(cur->branch) {
		(*numNodes)++;
		FUNC0(tree, buf, *numNodes);
		FUNC2(cur->branch, tree, numNodes, buf);
	} else { /* "null pointer" */
		FUNC0(tree, buf, 0);
	}
}