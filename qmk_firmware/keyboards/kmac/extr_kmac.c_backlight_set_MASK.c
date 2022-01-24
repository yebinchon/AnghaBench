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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  B1 ; 
 int /*<<< orphan*/  B2 ; 
 int /*<<< orphan*/  B3 ; 
 int /*<<< orphan*/  B4 ; 
 int /*<<< orphan*/  D7 ; 
 int F_ROW_MASK ; 
 int WASD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint8_t level) {
    // F-row
    if (level & F_ROW_MASK) {
        FUNC0(B1);
    } else {
        FUNC1(B1);
    }

    // WASD
    if (level & WASD_MASK) {
        FUNC1(B2);
        FUNC1(B3);
        FUNC1(B4);
        FUNC1(D7);
    } else {
        FUNC0(B2);
        FUNC0(B3);
        FUNC0(B4);
        FUNC0(D7);
    }
}