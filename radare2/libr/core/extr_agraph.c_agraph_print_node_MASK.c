#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ is_tiny; scalar_t__ curnode; } ;
struct TYPE_13__ {scalar_t__ is_mini; scalar_t__ is_dummy; } ;
typedef  TYPE_1__ RANode ;
typedef  TYPE_2__ RAGraph ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*,TYPE_1__*,int const,int const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*,TYPE_1__*,int const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*,TYPE_1__*,int const) ; 

__attribute__((used)) static void FUNC5(const RAGraph *g, RANode *n) {
	if (n->is_dummy) {
		return;
	}
	const int cur = g->curnode && FUNC0 (g->curnode) == n;
	const bool isMini = FUNC1 (g);
	if (g->is_tiny) {
		FUNC4 (g, n, cur);
	} else if (isMini || n->is_mini) {
		FUNC2 (g, n, cur, isMini);
	} else {
		FUNC3 (g, n, cur);
	}
}