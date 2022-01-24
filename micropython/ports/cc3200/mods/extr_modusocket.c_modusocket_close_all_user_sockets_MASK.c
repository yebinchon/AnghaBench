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
struct TYPE_2__ {int sd; scalar_t__ user; } ;

/* Variables and functions */
 int MOD_NETWORK_MAX_SOCKETS ; 
 int /*<<< orphan*/  SL_OS_WAIT_FOREVER ; 
 int /*<<< orphan*/  modusocket_LockObj ; 
 TYPE_1__* modusocket_sockets ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3 (void) {
    FUNC1 (&modusocket_LockObj, SL_OS_WAIT_FOREVER);
    for (int i = 0; i < MOD_NETWORK_MAX_SOCKETS; i++) {
        if (modusocket_sockets[i].sd >= 0 && modusocket_sockets[i].user) {
            FUNC0(modusocket_sockets[i].sd);
            modusocket_sockets[i].sd = -1;
        }
    }
    FUNC2 (&modusocket_LockObj);
}