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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDHOST_BASE ; 
 unsigned long SDHOST_INT_CC ; 
 unsigned long SDHOST_INT_ERRI ; 

__attribute__((used)) static unsigned int FUNC4 (unsigned int ulCmd, unsigned int ulArg) {
    unsigned long ulStatus;

    // Clear the interrupt status
    FUNC2(SDHOST_BASE,0xFFFFFFFF);

    // Send command
    FUNC1(SDHOST_BASE,ulCmd,ulArg);

    // Wait for command complete or error
    do {
        ulStatus = FUNC3(SDHOST_BASE);
        ulStatus = (ulStatus & (SDHOST_INT_CC | SDHOST_INT_ERRI));
    } while (!ulStatus);

    // Check error status
    if (ulStatus & SDHOST_INT_ERRI) {
        // Reset the command line
        FUNC0(SDHOST_BASE);
        return 1;
    }
    else {
        return 0;
    }
}