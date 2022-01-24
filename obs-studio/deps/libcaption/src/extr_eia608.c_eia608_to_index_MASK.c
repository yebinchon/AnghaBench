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
typedef  int uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(uint16_t cc_data, int* chan, int* c1, int* c2)
{
    (*c1) = (*c2) = -1;
    (*chan) = 0;
    cc_data &= 0x7F7F; // strip off parity bits

    // Handle Basic NA BEFORE we strip the channel bit
    if (FUNC0(cc_data)) {
        // we got first char, yes. But what about second char?
        (*c1) = (cc_data >> 8) - 0x20;
        cc_data &= 0x00FF;

        if (0x0020 <= cc_data && 0x0080 > cc_data) {
            (*c2) = cc_data - 0x20;
            return 2;
        }

        return 1;
    }

    // Check then strip second channel toggle
    (*chan) = cc_data & 0x0800;
    cc_data = cc_data & 0xF7FF;

    if (FUNC1(cc_data)) {
        // Special North American character
        (*c1) = cc_data - 0x1130 + 0x60;
        return 1;
    }

    if (0x1220 <= cc_data && 0x1240 > cc_data) {
        // Extended Western European character set, Spanish/Miscellaneous/French
        (*c1) = cc_data - 0x1220 + 0x70;
        return 1;
    }

    if (0x1320 <= cc_data && 0x1340 > cc_data) {
        // Extended Western European character set, Portuguese/German/Danish
        (*c1) = cc_data - 0x1320 + 0x90;
        return 1;
    }

    return 0;
}