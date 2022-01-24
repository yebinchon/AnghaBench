#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int is_valid; } ;
struct TYPE_10__ {TYPE_1__ stop_reason; int /*<<< orphan*/  sock; } ;
typedef  TYPE_2__ libgdbr_t ;
struct TYPE_11__ {int valid; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_4__ reg_cache ; 
 int FUNC3 (TYPE_2__*,char*) ; 

int FUNC4(libgdbr_t *g) {
	int ret = -1;

	if (!g || !g->sock) {
		return -1;
	}

	if (!FUNC1 (g)) {
		goto end;
	}

	reg_cache.valid = false;
	g->stop_reason.is_valid = false;
	ret = FUNC3 (g, "D");
	if (ret < 0) {
		ret = -1;
		goto end;
	}
	// Disconnect
	ret = FUNC0 (g);
end:
	FUNC2 (g);
	return ret;
}