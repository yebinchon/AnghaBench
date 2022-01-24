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
typedef  int uint64_t ;
struct TYPE_9__ {int data_len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ libgdbr_t ;
struct TYPE_10__ {int valid; } ;

/* Variables and functions */
 char* CMD_WRITEREGS ; 
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int) ; 
 TYPE_3__ reg_cache ; 
 scalar_t__ FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 

int FUNC9(libgdbr_t *g){
	int ret = -1;
	uint64_t buffer_size;
	char *command = NULL;

	if (!g) {
		return -1;
	}

	if (!FUNC2 (g)) {
		goto end;
	}

	buffer_size = g->data_len * 2 + 8;
	reg_cache.valid = false;

	command = FUNC0 (buffer_size, sizeof (char));
	if (!command) {
		ret = -1;
		goto end;
	}
	FUNC8 (command, buffer_size, "%s", CMD_WRITEREGS);
	FUNC5 (g->data, g->data_len, command + 1);
	if (FUNC7 (g, command) < 0) {
		ret = -1;
		goto end;
	}
	if (FUNC6 (g, false) >= 0) {
		FUNC4 (g);
	} else {
		ret = -1;
		goto end;
	}

	ret = 0;
end:
	FUNC3 (g);
	if (command) {
		FUNC1 (command);
	}
	return ret;
}