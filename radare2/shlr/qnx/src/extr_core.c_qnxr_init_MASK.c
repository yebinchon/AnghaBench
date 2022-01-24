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
struct TYPE_4__ {char* send_buff; char* read_buff; int /*<<< orphan*/  registers; scalar_t__ send_len; } ;
typedef  TYPE_1__ libqnxr_t ;

/* Variables and functions */
 int DS_DATA_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  x86_32 ; 

int FUNC3 (libqnxr_t *g) {
	if (!g) return -1;
	FUNC2 (g, 0, sizeof (libqnxr_t));
	g->send_len = 0;
	g->send_buff = (char *)FUNC1 (DS_DATA_MAX_SIZE * 2, 1);
	if (!g->send_buff)
		return -1;
	g->read_buff = (char *)FUNC1 (DS_DATA_MAX_SIZE * 2, 1);
	if (!g->read_buff) {
		FUNC0 (g->send_buff);
		return -1;
	}
	g->registers = x86_32;
	return 0;
}