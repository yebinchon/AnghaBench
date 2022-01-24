#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int do_disable; } ;

/* Variables and functions */
 int SERVERS_CYCLE_TIME_MS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__ servers_data ; 

void FUNC2 (void) {
    servers_data.do_disable = true;
    do {
        FUNC0(SERVERS_CYCLE_TIME_MS);
    } while (FUNC1());
    FUNC0(SERVERS_CYCLE_TIME_MS * 3);
}