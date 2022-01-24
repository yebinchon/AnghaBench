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
 int /*<<< orphan*/  B5 ; 
 int /*<<< orphan*/  B6 ; 
 int /*<<< orphan*/  C6 ; 
 int /*<<< orphan*/  C7 ; 
 int /*<<< orphan*/  F0 ; 
 int /*<<< orphan*/  F1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uint8_t col) {
    if (col < 16) {
        uint8_t c = col + 8;

        FUNC0(B6, c & 0b10000);
        FUNC0(C6, c & 0b01000);
        FUNC0(C7, c & 0b00100);
        FUNC0(F1, c & 0b00010);
        FUNC0(F0, c & 0b00001);
    } else {
        FUNC1(B5);
    }
}