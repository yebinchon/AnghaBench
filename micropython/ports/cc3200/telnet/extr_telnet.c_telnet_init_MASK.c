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
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/ * rxBuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_TELNET_STE_DISABLED ; 
 int /*<<< orphan*/  TELNET_RX_BUFFER_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ telnet_data ; 

void FUNC2 (void) {
    // Allocate memory for the receive buffer (from the RTOS heap)
    FUNC0 ((telnet_data.rxBuffer = FUNC1(TELNET_RX_BUFFER_SIZE)) != NULL);
    telnet_data.state = E_TELNET_STE_DISABLED;
}