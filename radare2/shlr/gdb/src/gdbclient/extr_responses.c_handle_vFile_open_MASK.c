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
struct TYPE_4__ {int data_len; float* data; int /*<<< orphan*/  remote_file_fd; } ;
typedef  TYPE_1__ libgdbr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

int FUNC3(libgdbr_t *g) {
	if (g->data_len < 2 || g->data[0] != 'F' || g->data[1] == '-'
	    || !FUNC0 (g->data[1])) {
		FUNC1 (g);
		return -1;
	}
	g->data[g->data_len] = '\0';
	if ((g->remote_file_fd = FUNC2 (g->data + 1, NULL, 16)) <= 0) {
		FUNC1 (g);
		return -1;
	}
	return FUNC1 (g);
}