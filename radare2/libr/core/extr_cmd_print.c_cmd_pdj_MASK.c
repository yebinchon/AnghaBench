#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_4__ {int /*<<< orphan*/  blocksize; int /*<<< orphan*/  offset; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  PJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC8(RCore *core, const char *arg, ut8* block) {
	int nblines = FUNC7 (core->num, arg);
	PJ *pj = FUNC3 ();
	if (!pj) {
		return;
	}
	FUNC0 (pj);
	FUNC6 (core, core->offset, block, core->blocksize, nblines, pj);
	FUNC1 (pj);
	FUNC5 ("%s\n", FUNC4 (pj));
	FUNC2 (pj);
}