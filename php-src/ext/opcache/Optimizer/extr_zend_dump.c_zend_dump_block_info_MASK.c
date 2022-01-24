#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* predecessors; TYPE_2__* blocks; } ;
typedef  TYPE_1__ zend_cfg ;
struct TYPE_5__ {int flags; scalar_t__ len; int start; int predecessors_count; int predecessor_offset; scalar_t__ successors_count; int* successors; int idom; int level; int loop_header; int children; int next_child; } ;
typedef  TYPE_2__ zend_basic_block ;
typedef  int uint32_t ;

/* Variables and functions */
 int ZEND_BB_CATCH ; 
 int ZEND_BB_ENTRY ; 
 int ZEND_BB_EXIT ; 
 int ZEND_BB_FINALLY ; 
 int ZEND_BB_FINALLY_END ; 
 int ZEND_BB_FOLLOW ; 
 int ZEND_BB_IRREDUCIBLE_LOOP ; 
 int ZEND_BB_LOOP_HEADER ; 
 int ZEND_BB_REACHABLE ; 
 int ZEND_BB_RECV_ENTRY ; 
 int ZEND_BB_START ; 
 int ZEND_BB_TARGET ; 
 int ZEND_BB_TRY ; 
 int ZEND_BB_UNREACHABLE_FREE ; 
 int ZEND_DUMP_HIDE_UNREACHABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC1(const zend_cfg *cfg, int n, uint32_t dump_flags)
{
	zend_basic_block *b = cfg->blocks + n;

	FUNC0(stderr, "BB%d:", n);
	if (b->flags & ZEND_BB_START) {
		FUNC0(stderr, " start");
	}
	if (b->flags & ZEND_BB_RECV_ENTRY) {
		FUNC0(stderr, " recv");
	}
	if (b->flags & ZEND_BB_FOLLOW) {
		FUNC0(stderr, " follow");
	}
	if (b->flags & ZEND_BB_TARGET) {
		FUNC0(stderr, " target");
	}
	if (b->flags & ZEND_BB_EXIT) {
		FUNC0(stderr, " exit");
	}
	if (b->flags & (ZEND_BB_ENTRY|ZEND_BB_RECV_ENTRY)) {
		FUNC0(stderr, " entry");
	}
	if (b->flags & ZEND_BB_TRY) {
		FUNC0(stderr, " try");
	}
	if (b->flags & ZEND_BB_CATCH) {
		FUNC0(stderr, " catch");
	}
	if (b->flags & ZEND_BB_FINALLY) {
		FUNC0(stderr, " finally");
	}
	if (b->flags & ZEND_BB_FINALLY_END) {
		FUNC0(stderr, " finally_end");
	}
	if (!(dump_flags & ZEND_DUMP_HIDE_UNREACHABLE) && !(b->flags & ZEND_BB_REACHABLE)) {
		FUNC0(stderr, " unreachable");
	}
	if (b->flags & ZEND_BB_UNREACHABLE_FREE) {
		FUNC0(stderr, " unreachable_free");
	}
	if (b->flags & ZEND_BB_LOOP_HEADER) {
		FUNC0(stderr, " loop_header");
	}
	if (b->flags & ZEND_BB_IRREDUCIBLE_LOOP) {
		FUNC0(stderr, " irreducible");
	}
	if (b->len != 0) {
		FUNC0(stderr, " lines=[%d-%ld]", b->start, b->start + b->len - 1);
	} else {
		FUNC0(stderr, " empty");
	}
	FUNC0(stderr, "\n");

	if (b->predecessors_count) {
		int *p = cfg->predecessors + b->predecessor_offset;
		int *end = p + b->predecessors_count;

		FUNC0(stderr, "    ; from=(BB%d", *p);
		for (p++; p < end; p++) {
			FUNC0(stderr, ", BB%d", *p);
		}
		FUNC0(stderr, ")\n");
	}

	if (b->successors_count > 0) {
		int s;
		FUNC0(stderr, "    ; to=(BB%d", b->successors[0]);
		for (s = 1; s < b->successors_count; s++) {
			FUNC0(stderr, ", BB%d", b->successors[s]);
		}
		FUNC0(stderr, ")\n");
	}

	if (b->idom >= 0) {
		FUNC0(stderr, "    ; idom=BB%d\n", b->idom);
	}
	if (b->level >= 0) {
		FUNC0(stderr, "    ; level=%d\n", b->level);
	}
	if (b->loop_header >= 0) {
		FUNC0(stderr, "    ; loop_header=%d\n", b->loop_header);
	}
	if (b->children >= 0) {
		int j = b->children;
		FUNC0(stderr, "    ; children=(BB%d", j);
		j = cfg->blocks[j].next_child;
		while (j >= 0) {
			FUNC0(stderr, ", BB%d", j);
			j = cfg->blocks[j].next_child;
		}
		FUNC0(stderr, ")\n");
	}
}