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
struct TYPE_3__ {char* send_buff; size_t send_len; int /*<<< orphan*/  sock; scalar_t__ no_ack; scalar_t__ server_debug; } ;
typedef  TYPE_1__ libgdbr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 

int FUNC2(libgdbr_t *g) {
	if (!g) {
		FUNC0 ("Initialize libgdbr_t first\n");
		return -1;
	}
	if (g->server_debug) {
		g->send_buff[g->send_len] = '\0';
		FUNC0 ("putpkt (\"%s\");  %s\n", g->send_buff,
			 g->no_ack ? "[noack mode]" : "[looking for ack]");
	}
	return FUNC1 (g->sock, g->send_buff, g->send_len);
}