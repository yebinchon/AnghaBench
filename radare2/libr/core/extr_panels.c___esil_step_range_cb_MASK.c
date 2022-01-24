#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_6__ {scalar_t__ offset; int /*<<< orphan*/  num; } ;
typedef  int /*<<< orphan*/  RStrBuf ;
typedef  TYPE_1__ RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 char* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(void *user) {
	RStrBuf *rsb = FUNC8 (NULL);
	RCore *core = (RCore *)user;
	FUNC5 (rsb, "start addr: ");
	char *s = FUNC3 (core, FUNC7 (rsb));
	FUNC5 (rsb, s);
	FUNC5 (rsb, " end addr: ");
	char *d = FUNC3 (core, FUNC7 (rsb));
	FUNC6 (rsb);
	ut64 s_a = FUNC4 (core->num, s);
	ut64 d_a = FUNC4 (core->num, d);
	if (s_a >= d_a) {
		return 0;
	}
	ut64 tmp = core->offset;
	core->offset = s_a;
	FUNC0 (core);
	FUNC1 (core, d_a);
	core->offset = tmp;
	FUNC2 ((RCore *)user, false, false);
	return 0;
}