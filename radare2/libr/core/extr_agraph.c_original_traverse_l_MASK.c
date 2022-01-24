#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int n_layers; TYPE_1__* layers; } ;
struct TYPE_12__ {int pos_in_layer; size_t layer; scalar_t__ is_dummy; } ;
struct TYPE_11__ {int n_nodes; int /*<<< orphan*/ ** nodes; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  int /*<<< orphan*/  RGraphNode ;
typedef  TYPE_2__ RANode ;
typedef  TYPE_3__ RAGraph ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__ const*,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC5 (TYPE_3__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__ const*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__ const*,int,int,int) ; 

__attribute__((used)) static void FUNC8(const RAGraph *g, Sdb *D, Sdb *P, int from_up) {
	int i, k, va, vr;

	for (i = from_up? 0: g->n_layers - 1;
			(from_up && i < g->n_layers) || (!from_up && i >= 0);
			i = from_up? i + 1: i - 1) {
		int j;
		const RGraphNode *bm = NULL;
		const RANode *bma = NULL;

		j = 0;
		while (j < g->layers[i].n_nodes && !bm) {
			const RGraphNode *gn = g->layers[i].nodes[j];
			const RANode *an = FUNC1 (gn);
			if (an && an->is_dummy) {
				va = 0;
				vr = j;
				bm = gn;
				bma = an;
			}
			j++;
		}
		if (!bm) {
			va = 0;
			vr = g->layers[i].n_nodes;
		}
		FUNC6 (g, i, NULL, bm, from_up, va, vr);
		for (k = va; k < vr - 1; k++) {
			FUNC7 (g, i, k, k + 1);
		}
		if (FUNC5 (g, i, vr - 1) && bm) {
			FUNC7 (g, i, vr - 1, bma->pos_in_layer);
		}
		while (bm) {
			const RGraphNode *bp = FUNC2 (g, bm);
			const RANode *bpa = NULL;
			bma = FUNC1 (bm);

			if (!bp) {
				va = bma->pos_in_layer + 1;
				vr = g->layers[bma->layer].n_nodes;
				FUNC6 (g, i, bm, NULL, from_up, va, vr);
				for (k = va; k < vr - 1; ++k) {
					FUNC7 (g, i, k, k + 1);
				}

				if (FUNC5 (g, i, va)) {
					FUNC7 (g, i, bma->pos_in_layer, va);
				}
			} else if (FUNC3 (D, bm) == from_up) {
				bpa = FUNC1 (bp);
				va = bma->pos_in_layer + 1;
				vr = bpa->pos_in_layer;
				FUNC6 (g, i, bm, bp, from_up, va, vr);
				FUNC4 (P, bm, true);
			}
			bm = bp;
		}
		FUNC0 (g, i, from_up, D, P);
	}
}