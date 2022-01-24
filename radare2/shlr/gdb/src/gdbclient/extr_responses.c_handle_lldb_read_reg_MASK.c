#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* read_buff; size_t data_len; int /*<<< orphan*/ * data; TYPE_1__* registers; } ;
typedef  TYPE_2__ libgdbr_t ;
struct TYPE_5__ {size_t offset; size_t size; scalar_t__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*) ; 

int FUNC9(libgdbr_t *g) {
	if (FUNC3 (g) < 0) {
		return -1;
	}
	char *ptr, *ptr2, *buf;
	size_t regnum, tot_regs, buflen = 0;

	// Get maximum register number
	for (regnum = 0; *g->registers[regnum].name; regnum++) {
		if (g->registers[regnum].offset + g->registers[regnum].size > buflen) {
			buflen = g->registers[regnum].offset + g->registers[regnum].size;
		}
	}
	tot_regs = regnum;

	// We're not using the receive buffer till next packet anyway. Better use it
	buf = g->read_buff;
	FUNC2 (buf, 0, buflen);

	if (!(ptr = FUNC6 (g->data, ";"))) {
		return -1;
	}
	while (ptr) {
		if (!FUNC0 (*ptr)) {
			// This is not a reg value. Skip
			ptr = FUNC6 (NULL, ";");
			continue;
		}
		// Get register number
		regnum = (int) FUNC7 (ptr, NULL, 16);
		if (regnum >= tot_regs || !(ptr2 = FUNC4 (ptr, ':'))) {
			ptr = FUNC6 (NULL, ";");
			continue;
		}
		ptr2++;
		// Write to offset
		FUNC8 (ptr2, FUNC5 (ptr2), buf + g->registers[regnum].offset);
		ptr = FUNC6 (NULL, ";");
		continue;
	}
	FUNC1 (g->data, buf, buflen);
	g->data_len = buflen;
	return 0;
}