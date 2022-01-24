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
typedef  int uint32_t ;
typedef  scalar_t__ FLASH_Status ;

/* Variables and functions */
 scalar_t__ FLASH_BUSY ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FLASH_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 () ; 

FLASH_Status FUNC2(uint32_t Timeout) {
    FLASH_Status status;

    /* Check for the Flash Status */
    status = FUNC0();
    /* Wait for a Flash operation to complete or a TIMEOUT to occur */
    while ((status == FLASH_BUSY) && (Timeout != 0x00)) {
        FUNC1();
        status = FUNC0();
        Timeout--;
    }
    if (Timeout == 0) status = FLASH_TIMEOUT;
    /* Return the operation status */
    return status;
}