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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RMASK ; 
 scalar_t__ RSIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4(uint8_t sn, uint8_t *wizdata, uint16_t len) {
    if (len == 0) {
        return;
    }

    uint16_t ptr = FUNC2(sn);
    uint16_t offset = ptr & RMASK;
    uint16_t addr = FUNC0(sn) + offset;

    if (offset + len > RSIZE) {
        // implement wrap-around circular buffer
        uint16_t size = RSIZE - offset;
        FUNC1(addr, wizdata, size);
        FUNC1(FUNC0(sn), wizdata + size, len - size);
    } else {
        FUNC1(addr, wizdata, len);
    }

    ptr += len;
    FUNC3(sn, ptr);
}