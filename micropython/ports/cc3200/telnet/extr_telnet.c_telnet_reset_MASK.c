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
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  sd; int /*<<< orphan*/  n_sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_TELNET_STE_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ telnet_data ; 

void FUNC1 (void) {
    // close the connection and start all over again
    FUNC0(&telnet_data.n_sd);
    FUNC0(&telnet_data.sd);
    telnet_data.state = E_TELNET_STE_START;
}