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
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  contain_windowfuncs_walker ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool
FUNC1(Node *node)
{
	/*
	 * Must be prepared to start with a Query or a bare expression tree; if
	 * it's a Query, we don't want to increment sublevels_up.
	 */
	return FUNC0(node,
										   contain_windowfuncs_walker,
										   NULL,
										   0);
}