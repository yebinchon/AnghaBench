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
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_8__ {int /*<<< orphan*/  num; } ;
struct TYPE_7__ {TYPE_1__* model; } ;
struct TYPE_6__ {char* cmdStrCache; } ;
typedef  int /*<<< orphan*/  RStrBuf ;
typedef  TYPE_2__ RPanel ;
typedef  TYPE_3__ RCore ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  UT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

ut64 FUNC6(RCore *core, RPanel *panel, int idx) {
	if (!panel->model->cmdStrCache) {
		return UT64_MAX;
	}
	RStrBuf *buf = FUNC5 (NULL);
	char *s = panel->model->cmdStrCache;
	int l = 0;
	while (FUNC0 (s) && l != idx) {
		if (*s == '\n') {
			l++;
		}
		s++;
	}
	while (FUNC0 (s) && FUNC0 (s + 1)) {
		if (*s == '0' && *(s + 1) == 'x') {
			FUNC2 (buf, s, 2);
			while (*s != ' ') {
				FUNC2 (buf, s, 1);
				s++;
			}
			ut64 ret = FUNC1 (core->num, FUNC4 (buf));
			FUNC3 (buf);
			return ret;
		}
		s++;
	}
	FUNC3 (buf);
	return UT64_MAX;
}