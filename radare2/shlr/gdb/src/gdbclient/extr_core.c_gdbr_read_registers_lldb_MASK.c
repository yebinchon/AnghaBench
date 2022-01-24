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
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  data; int /*<<< orphan*/  data_len; int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ libgdbr_t ;
struct TYPE_10__ {int valid; int /*<<< orphan*/  buflen; int /*<<< orphan*/  buf; scalar_t__ init; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 TYPE_3__ reg_cache ; 
 scalar_t__ FUNC5 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC6(libgdbr_t *g) {
	// Send the stop reply query packet and get register info
	// (this is what lldb does)
	int ret = -1;

	if (!g || !g->sock) {
		return -1;
	}

	if (!FUNC0 (g)) {
		goto end;
	}

	if (FUNC5 (g, "?") < 0 || FUNC4 (g, false) < 0) {
		ret = -1;
		goto end;
	}
	if ((ret = FUNC2 (g)) < 0) {
		goto end;
	}
	if (reg_cache.init) {
		reg_cache.buflen = g->data_len;
		FUNC3 (reg_cache.buf, g->data, reg_cache.buflen);
		reg_cache.valid = true;
	}

	ret = 0;
end:
	FUNC1 (g);
	return ret;
}