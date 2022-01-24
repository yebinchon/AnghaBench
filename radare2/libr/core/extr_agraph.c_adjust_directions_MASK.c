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
struct TYPE_8__ {int n_layers; TYPE_1__* layers; int /*<<< orphan*/  graph; } ;
struct TYPE_7__ {int pos_in_layer; size_t layer; scalar_t__ is_dummy; } ;
struct TYPE_6__ {int n_nodes; int /*<<< orphan*/ ** nodes; } ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  int /*<<< orphan*/  RGraphNode ;
typedef  TYPE_2__ RANode ;
typedef  TYPE_3__ RAGraph ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const RAGraph *g, int i, int from_up, Sdb *D, Sdb *P) {
	const RGraphNode *vm = NULL, *wm = NULL;
	const RANode *vma = NULL, *wma = NULL;
	int j, d = from_up? 1: -1;

	if (i + d < 0 || i + d >= g->n_layers) {
		return;
	}
	for (j = 0; j < g->layers[i + d].n_nodes; ++j) {
		const RGraphNode *wp, *vp = g->layers[i + d].nodes[j];
		const RANode *wpa, *vpa = FUNC0 (vp);

		if (!vpa || !vpa->is_dummy) {
			continue;
		}
		if (from_up) {
			wp = FUNC5 (FUNC3 (g->graph, vp), 0);
		} else {
			wp = FUNC4 (g->graph, vp, 0);
		}
		wpa = FUNC0 (wp);
		if (!wpa || !wpa->is_dummy) {
			continue;
		}
		if (vm) {
			int p = FUNC1 (P, wm);
			int k;

			for (k = wma->pos_in_layer + 1; k < wpa->pos_in_layer; ++k) {
				const RGraphNode *w = g->layers[wma->layer].nodes[k];
				const RANode *aw = FUNC0 (w);
				if (aw && aw->is_dummy) {
					p &= FUNC1 (P, w);
				}
			}
			if (p) {
				FUNC2 (D, vm, from_up);
				for (k = vma->pos_in_layer + 1; k < vpa->pos_in_layer; ++k) {
					const RGraphNode *v = g->layers[vma->layer].nodes[k];
					const RANode *av = FUNC0 (v);
					if (av && av->is_dummy) {
						FUNC2 (D, v, from_up);
					}
				}
			}
		}
		vm = vp;
		wm = wp;
		vma = FUNC0 (vm);
		wma = FUNC0 (wm);
	}
}