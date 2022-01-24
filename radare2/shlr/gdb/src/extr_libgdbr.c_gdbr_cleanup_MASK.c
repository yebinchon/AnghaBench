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
struct TYPE_3__ {int /*<<< orphan*/  gdbr_lock; int /*<<< orphan*/  read_buff; int /*<<< orphan*/  send_buff; scalar_t__ send_len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ libgdbr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(libgdbr_t *g) {
	if (!g) {
		return -1;
	}
	FUNC0 (g->data);
	g->send_len = 0;
	FUNC0 (g->send_buff);
	FUNC0 (g->read_buff);
	FUNC1 (g->gdbr_lock);
	return 0;
}