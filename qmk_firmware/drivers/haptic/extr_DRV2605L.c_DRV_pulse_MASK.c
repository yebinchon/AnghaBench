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
 int /*<<< orphan*/  DRV_GO ; 
 int /*<<< orphan*/  DRV_WAVEFORM_SEQ_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1(uint8_t sequence) {
    FUNC0(DRV_GO, 0x00);
    FUNC0(DRV_WAVEFORM_SEQ_1, sequence);
    FUNC0(DRV_GO, 0x01);
}