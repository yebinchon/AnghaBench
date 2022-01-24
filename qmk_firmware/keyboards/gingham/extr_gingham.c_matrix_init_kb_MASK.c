#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int PORT_EXPANDER_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int send_data ; 

void FUNC2(void) {
    // Due to the way the port expander is setup both LEDs are already outputs. This is set n matrix.copy
    //Turn the red LED on as power indicator.
    send_data = 0x10;
    FUNC0((PORT_EXPANDER_ADDRESS << 1), 0x09, &send_data, 1, 20);

    FUNC1();
}