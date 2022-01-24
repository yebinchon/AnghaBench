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
struct TYPE_2__ {scalar_t__ volcount; int /*<<< orphan*/  substate; int /*<<< orphan*/  state; int /*<<< orphan*/  ld_sd; int /*<<< orphan*/  lc_sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_FTP_STE_START ; 
 int /*<<< orphan*/  E_FTP_STE_SUB_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ ftp_data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3 (void) {
    // close all connections and start all over again
    FUNC2(&ftp_data.lc_sd);
    FUNC2(&ftp_data.ld_sd);
    FUNC1();
    ftp_data.state = E_FTP_STE_START;
    ftp_data.substate = E_FTP_STE_SUB_DISCONNECTED;
    ftp_data.volcount = 0;
    FUNC0();
}