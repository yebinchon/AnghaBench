#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct len_pos_t {int len; int pos; } ;
struct TYPE_17__ {TYPE_1__* layers; } ;
struct TYPE_16__ {int x; } ;
struct TYPE_15__ {void* free; } ;
struct TYPE_14__ {int /*<<< orphan*/ ** nodes; } ;
typedef  void* RListFree ;
typedef  TYPE_2__ RList ;
typedef  int /*<<< orphan*/  RGraphNode ;
typedef  TYPE_3__ RANode ;
typedef  TYPE_4__ RAGraph ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__ const*,int,int /*<<< orphan*/  const*,int,int,int,TYPE_2__*,int) ; 
 int FUNC3 (TYPE_4__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct len_pos_t*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 () ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC10(const RAGraph *g, int l, const RGraphNode *bm, const RGraphNode *bp, int from_up, int a, int r) {
	RList *Rm = FUNC8 (), *Rp = FUNC8 ();
	const RGraphNode *vt, *vtp;
	RANode *at, *atp;
	int rm, rp, t, m, i;
	Rm->free = (RListFree) free;
	Rp->free = (RListFree) free;

	t = (a + r) / 2;
	vt = g->layers[l].nodes[t - 1];
	vtp = g->layers[l].nodes[t];
	at = FUNC5 (vt);
	atp = FUNC5 (vtp);

	FUNC2 (g, l, bm, from_up, a, t, Rm, true);
	FUNC2 (g, l, bp, from_up, t, r, Rp, false);
	rm = rp = 0;

	m = FUNC3 (g, vt, vtp);
	if (at && atp) {
		while (atp->x - at->x < m) {
			if (atp->x == at->x) {
				int step = m / 2;
				at->x -= step;
				atp->x += m - step;
			} else {
				if (rm < rp) {
					if (FUNC6 (Rm)) {
						at->x = atp->x - m;
					} else {
						struct len_pos_t *cx = (struct len_pos_t *) FUNC9 (Rm);
						rm = rm + cx->len;
						at->x = FUNC0 (cx->pos, atp->x - m);
						FUNC4 (cx);
					}
				} else {
					if (FUNC6 (Rp)) {
						atp->x = at->x + m;
					} else {
						struct len_pos_t *cx = (struct len_pos_t *) FUNC9 (Rp);
						rp = rp + cx->len;
						atp->x = FUNC1 (cx->pos, at->x + m);
						FUNC4 (cx);
					}
				}
			}
		}
	}

	FUNC7 (Rm);
	FUNC7 (Rp);

	for (i = t - 2; i >= a; --i) {
		const RGraphNode *gv = g->layers[l].nodes[i];
		RANode *av = FUNC5 (gv);
		if (av && at) {
			av->x = FUNC1 (av->x, at->x - FUNC3 (g, gv, vt));
		}
	}

	for (i = t + 1; i < r; ++i) {
		const RGraphNode *gv = g->layers[l].nodes[i];
		RANode *av = FUNC5 (gv);
		if (av && atp) {
			av->x = FUNC0 (av->x, atp->x + FUNC3 (g, vtp, gv));
		}
	}
}