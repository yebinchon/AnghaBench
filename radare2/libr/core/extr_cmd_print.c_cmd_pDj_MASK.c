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
struct TYPE_4__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  io; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ RCore ;
typedef  int /*<<< orphan*/  PJ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC12(RCore *core, const char *arg) {
	int bsize = FUNC11 (core->num, arg);
	if (bsize < 0) {
		bsize = -bsize;
	}
	PJ *pj = FUNC6 ();
	if (!pj) {
		return;
	}
	FUNC3 (pj);
	ut8 *buf = FUNC2 (bsize);
	if (buf) {
		FUNC10 (core->io, core->offset, buf, bsize);
		FUNC9 (core, core->offset, buf, bsize, 0, pj);
		FUNC1 (buf);
	} else {
		FUNC0 ("cannot allocate %d byte(s)\n", bsize);
	}
	FUNC4 (pj);
	FUNC8 ("%s", FUNC7 (pj));
	FUNC5 (pj);
}