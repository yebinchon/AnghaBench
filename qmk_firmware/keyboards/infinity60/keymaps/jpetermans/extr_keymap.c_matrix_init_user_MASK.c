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

/* Variables and functions */
 int _FNAV ; 
 int _MEDIA ; 
 int _NUMPAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  led_game ; 
 int /*<<< orphan*/  led_media ; 
 int /*<<< orphan*/  led_nav ; 
 int /*<<< orphan*/  led_numpad ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 

void FUNC3(void) {

    FUNC1();

    // Write predefined led pages.
    FUNC2(_NUMPAD, led_numpad, 16);
    FUNC0(10);

    FUNC2(_FNAV, led_nav, 12);
    FUNC0(10);

    FUNC2(_MEDIA, led_media, 15);
    FUNC0(10);

    FUNC2(4, led_game, 5);
    FUNC0(1000);
}