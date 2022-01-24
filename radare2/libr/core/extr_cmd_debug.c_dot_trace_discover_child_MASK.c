#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct trace_node {int dummy; } ;
struct dot_trace_ght {int /*<<< orphan*/ * graphnodes; int /*<<< orphan*/ * graph; } ;
struct TYPE_6__ {struct trace_node* data; struct TYPE_6__* parent; } ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  TYPE_1__ RTreeVisitor ;
typedef  TYPE_2__ RTreeNode ;
typedef  int /*<<< orphan*/  RGraphNode ;
typedef  int /*<<< orphan*/  RGraph ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct trace_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (RTreeNode *n, RTreeVisitor *vis) {
	struct dot_trace_ght *data = (struct dot_trace_ght *)vis->data;
	RGraph *g = data->graph;
	Sdb *gnodes = data->graphnodes;
	RTreeNode *parent = n->parent;
	struct trace_node *tn = n->data;
	struct trace_node *tn_parent = parent->data;

	if (tn && tn_parent) {
		RGraphNode *gn = FUNC0 (g, gnodes, tn);
		RGraphNode *gn_parent = FUNC0 (g, gnodes, tn_parent);

		if (!FUNC2 (g, gn_parent, gn))
			FUNC1 (g, gn_parent, gn);
	}
}