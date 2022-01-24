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
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;

/* Variables and functions */
 scalar_t__ DOWN_LINK ; 
 scalar_t__ UP_LINK ; 
 scalar_t__ is_master ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*,int) ; 

void FUNC2(uint8_t link, uint8_t* data, uint16_t size) {
    if (is_master) {
        if (link == DOWN_LINK) {
            FUNC0(data[size - 1], data, size - 1);
        }
    } else {
        if (link == UP_LINK) {
            if (data[size - 1] & 1) {
                FUNC0(0, data, size - 1);
            }
            data[size - 1] >>= 1;
            FUNC1(DOWN_LINK, data, size);
        } else {
            data[size - 1]++;
            FUNC1(UP_LINK, data, size);
        }
    }
}