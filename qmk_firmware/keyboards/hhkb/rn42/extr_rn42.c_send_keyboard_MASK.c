#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mods; int* keys; } ;
typedef  TYPE_1__ report_keyboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(report_keyboard_t *report)
{
    // wake from deep sleep
/*
    PORTD |= (1<<5);    // high
    wait_ms(5);
    PORTD &= ~(1<<5);   // low
*/

    FUNC0(0xFD);  // Raw report mode
    FUNC0(9);     // length
    FUNC0(1);     // descriptor type
    FUNC0(report->mods);
    FUNC0(0x00);
    FUNC0(report->keys[0]);
    FUNC0(report->keys[1]);
    FUNC0(report->keys[2]);
    FUNC0(report->keys[3]);
    FUNC0(report->keys[4]);
    FUNC0(report->keys[5]);
}