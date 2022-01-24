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
struct TYPE_4__ {int data_len; char* data; } ;
typedef  TYPE_1__ libgdbr_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 

int FUNC3(libgdbr_t *g) {
	if (g->data_len == 3 && g->data[0] == 'E') {
		// TODO: figure out if this is a problem
		FUNC0 (g);
		return -1;
	}
	int len = FUNC1 (g->data);
	g->data_len = len / 2;
	FUNC2 (g->data, len, g->data);
	return FUNC0 (g);
}