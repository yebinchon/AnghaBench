#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  data_len; int /*<<< orphan*/  read_buff; } ;
typedef  TYPE_1__ libgdbr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*,char const*) ; 

int FUNC5(libgdbr_t *g, const char *command) {
	int ret = -1;

	if (!FUNC0 (g)) {
		goto end;
	}

	if ((ret = FUNC4 (g, command)) < 0) {
		goto end;
	}
	FUNC3 (g, false);
	FUNC2 (g->read_buff, g->data_len, 0);

	ret = 0;
end:
	FUNC1 (g);
	return ret;
}