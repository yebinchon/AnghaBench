#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut64 ;
struct TYPE_19__ {int /*<<< orphan*/  bbs; } ;
struct TYPE_18__ {int size; } ;
struct TYPE_17__ {int /*<<< orphan*/  anal; } ;
struct TYPE_16__ {TYPE_1__* block; } ;
struct TYPE_15__ {scalar_t__ blocks; scalar_t__ strings; scalar_t__ flags; scalar_t__ symbols; scalar_t__ comments; scalar_t__ in_functions; scalar_t__ functions; } ;
typedef  TYPE_2__ RCoreAnalStats ;
typedef  TYPE_3__ RCore ;
typedef  TYPE_4__ RAnalOp ;
typedef  TYPE_5__ RAnalFunction ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_OP_MASK_BASIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 () ; 
 TYPE_2__* FUNC11 (TYPE_3__*,scalar_t__,scalar_t__,int) ; 
 TYPE_4__* FUNC12 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ut8 *FUNC15(RCore *core, int type, int nblocks, int blocksize, int skipblocks, ut64 from) {
	int j, i = 0;
	ut8 *ptr = FUNC2 (1, nblocks);
	if (!ptr) {
		FUNC4 ("Error: failed to malloc memory");
		return NULL;
	}
	// XXX: unused memblock
	ut8 *p = FUNC6 (blocksize);
	if (!p) {
		FUNC0 (ptr);
		FUNC4 ("Error: failed to malloc memory");
		return NULL;
	}
	if (type == 'A') {
		ut64 to = from + (blocksize * nblocks);
		RCoreAnalStats *as = FUNC11 (core, from, to, blocksize);
		for (i = 0; i < nblocks; i++) {
			int value = 0;
			value += as->block[i].functions;
			value += as->block[i].in_functions;
			value += as->block[i].comments;
			value += as->block[i].symbols;
			value += as->block[i].flags;
			value += as->block[i].strings;
			value += as->block[i].blocks;
			ptr[i] = FUNC1 (255, value);
		}
		FUNC13 (as);
		FUNC5 (p);
		return ptr;
	}
	for (i = 0; i < nblocks; i++) {
		if (FUNC10 ()) {
			break;
		}
		ut64 off = from + (i + skipblocks) * blocksize;
		for (j = 0; j < blocksize ; j++) {
			if (type == 'a') {
				RAnalFunction *fcn = FUNC8 (core->anal, off + j, 0);
				if (fcn) {
					ptr[i] = FUNC14 (fcn->bbs);
				}
				continue;
			}
			RAnalOp *op = FUNC12 (core, off + j, R_ANAL_OP_MASK_BASIC);
			if (op) {
				if (op->size < 1) {
					// do nothing
					if (type == 'i') {
						FUNC7 (ptr, i);
					}
				} else {
					if (FUNC3 (op, type)) {
						FUNC7 (ptr, i);
					}
				}
				if (op->size > 0) {
					j += op->size - 1;
				}
				FUNC9 (op);
			} else {
				if (type == 'i') {
					FUNC7 (ptr, i);
				}
			}
		}
	}
	FUNC5 (p);
	return ptr;
}