#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  bbs; } ;
struct TYPE_11__ {int /*<<< orphan*/  anal; } ;
struct TYPE_10__ {int /*<<< orphan*/  bbsum; int /*<<< orphan*/  ebbs; int /*<<< orphan*/  edges; int /*<<< orphan*/  nbbs; int /*<<< orphan*/  cc; } ;
typedef  TYPE_1__ RSignGraph ;
typedef  TYPE_2__ RCore ;
typedef  TYPE_3__ RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,TYPE_1__) ; 

__attribute__((used)) static bool FUNC5(RCore *core, RAnalFunction *fcn, const char *name) {
	RSignGraph graph = {
		.cc = FUNC0 (core->anal, fcn),
		.nbbs = FUNC3 (fcn->bbs)
	};
	// XXX ebbs doesnt gets initialized if calling this from inside the struct
	graph.edges = FUNC1 (fcn, &graph.ebbs);
	graph.bbsum = FUNC2 (fcn);
	return FUNC4 (core->anal, name, graph);
}