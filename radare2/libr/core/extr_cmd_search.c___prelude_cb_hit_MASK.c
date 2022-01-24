#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
typedef  int /*<<< orphan*/  RSearchKeyword ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  R_ANAL_REF_TYPE_NULL ; 
 int /*<<< orphan*/  preludecnt ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(RSearchKeyword *kw, void *user, ut64 addr) {
	RCore *core = (RCore *) user;
	int depth = FUNC0 (core->config, "anal.depth");
	// eprintf ("ap: Found function prelude %d at 0x%08"PFMT64x"\n", preludecnt, addr);
	FUNC1 (core, addr, -1, R_ANAL_REF_TYPE_NULL, depth);
	preludecnt++;
	return 1;
}