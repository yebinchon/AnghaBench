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
struct TYPE_3__ {unsigned long usRCA; } ;
typedef  TYPE_1__ DiskInfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SELECT_CARD ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDHOST_BASE ; 
 int SDHOST_INT_TC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static unsigned int FUNC3 (DiskInfo_t *sDiskInfo) {
    unsigned long ulRCA;
    unsigned long ulRet;

    ulRCA = sDiskInfo->usRCA;

    // Send select command with card's RCA.
    ulRet = FUNC0(CMD_SELECT_CARD, (ulRCA << 16));

    if (ulRet == 0) {
        while (!(FUNC1(SDHOST_BASE) & SDHOST_INT_TC));
    }

    // Delay 250ms for the card to become ready
    FUNC2(250);

    return ulRet;
}