#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ctxAddSearchKwCB {scalar_t__ minsz; TYPE_1__* ss; } ;
struct TYPE_10__ {scalar_t__ size; int /*<<< orphan*/  mask; int /*<<< orphan*/  bytes; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; TYPE_3__* bytes; } ;
struct TYPE_8__ {int /*<<< orphan*/  search; int /*<<< orphan*/  items; } ;
typedef  TYPE_1__ RSignSearch ;
typedef  TYPE_2__ RSignItem ;
typedef  TYPE_3__ RSignBytes ;
typedef  int /*<<< orphan*/  RSearchKeyword ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(RSignItem *it, void *user) {
	struct ctxAddSearchKwCB *ctx = (struct ctxAddSearchKwCB *) user;
	RSignSearch *ss = ctx->ss;
	RSignBytes *bytes = it->bytes;
	RSearchKeyword *kw = NULL;

	if (!bytes) {
		FUNC0 ("Cannot find bytes for this signature: %s\n", it->name);
		return 1;
	}

	if (ctx->minsz && bytes->size < ctx->minsz) {
		return 1;
	}
	RSignItem *it2 = FUNC4 (it);
	if (it2) {
		FUNC1 (ss->items, it2);
		// TODO(nibble): change arg data in r_search_keyword_new to void*
		kw = FUNC2 (bytes->bytes, bytes->size, bytes->mask, bytes->size, (const char *) it2);
		FUNC3 (ss->search, kw);
	}
	return 1;
}