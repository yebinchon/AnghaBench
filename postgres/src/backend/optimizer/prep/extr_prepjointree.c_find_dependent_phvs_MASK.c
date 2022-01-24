#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ sublevels_up; int /*<<< orphan*/  relids; } ;
typedef  TYPE_1__ find_dependent_phvs_context ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  find_dependent_phvs_walker ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(Node *node, int varno)
{
	find_dependent_phvs_context context;

	context.relids = FUNC0(varno);
	context.sublevels_up = 0;

	/*
	 * Must be prepared to start with a Query or a bare expression tree.
	 */
	return FUNC1(node,
										   find_dependent_phvs_walker,
										   (void *) &context,
										   0);
}