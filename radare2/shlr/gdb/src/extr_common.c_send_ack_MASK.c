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
struct TYPE_3__ {scalar_t__ server_debug; int /*<<< orphan*/  sock; scalar_t__ no_ack; } ;
typedef  TYPE_1__ libgdbr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC2(libgdbr_t *g) {
	if (g) {
		if (g->no_ack) {
			return 0;
		}
		if (FUNC1 (g->sock, "+", 1) < 0) {
			return -1;
		}
		if (g->server_debug) {
			FUNC0 ("[sent ack]\n");
		}
		return 0;
	}
	return -1;
}