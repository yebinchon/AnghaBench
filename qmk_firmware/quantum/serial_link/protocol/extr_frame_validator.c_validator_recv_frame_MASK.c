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
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC3(uint8_t link, uint8_t* data, uint16_t size) {
    if (size > 4) {
        uint32_t frame_crc;
        FUNC1(&frame_crc, data + size - 4, 4);
        uint32_t expected_crc = FUNC0(data, size - 4);
        if (frame_crc == expected_crc) {
            FUNC2(link, data, size - 4);
        }
    }
}