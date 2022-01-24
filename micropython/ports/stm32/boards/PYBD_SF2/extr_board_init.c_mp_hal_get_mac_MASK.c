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
typedef  int uint8_t ;
struct TYPE_2__ {int series; char* mac; } ;

/* Variables and functions */
 TYPE_1__* OTP ; 
 int /*<<< orphan*/  FUNC0 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 

void FUNC2(int idx, uint8_t buf[6]) {
    // Check if OTP region has a valid MAC address, and use it if it does
    if (OTP->series == 0x00d1 && OTP->mac[0] == 'H' && OTP->mac[1] == 'J' && OTP->mac[2] == '0') {
        FUNC0(buf, OTP->mac, 6);
        buf[5] += idx;
        return;
    }

    // Generate a random locally administered MAC address (LAA)
    FUNC1(idx, buf);
}