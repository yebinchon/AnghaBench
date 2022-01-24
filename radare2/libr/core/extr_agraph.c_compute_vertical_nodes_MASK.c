#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int n_layers; int /*<<< orphan*/  graph; TYPE_1__* layers; } ;
struct TYPE_7__ {scalar_t__ is_dummy; } ;
struct TYPE_6__ {int n_nodes; int /*<<< orphan*/ ** nodes; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RGraphNode ;
typedef  TYPE_2__ RANode ;
typedef  TYPE_3__ RAGraph ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 

__attribute__((used)) static Sdb *FUNC7(const RAGraph *g) {
	Sdb *res = FUNC6 ();
	int i, j;

	for (i = 0; i < g->n_layers; ++i) {
		for (j = 0; j < g->layers[i].n_nodes; ++j) {
			RGraphNode *gn = g->layers[i].nodes[j];
			const RList *Ln = FUNC1 (res, gn);
			const RANode *an = FUNC0 (gn);

			if (!Ln) {
				RList *vert = FUNC5 ();
				FUNC2 (res, gn, vert);
				if (an->is_dummy) {
					RGraphNode *next = gn;
					const RANode *anext = FUNC0 (next);

					while (anext->is_dummy) {
						FUNC4 (vert, next);
						next = FUNC3 (g->graph, next, 0);
						if (!next) {
							break;
						}
						anext = FUNC0 (next);
					}
				} else {
					FUNC4 (vert, gn);
				}
			}
		}
	}

	return res;
}