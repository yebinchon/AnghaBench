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
 int LCD_BUSY ; 
 int /*<<< orphan*/  LCD_DELAY_BUSY_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint8_t FUNC2(void)

{
    register uint8_t c;

    /* wait until busy flag is cleared */
    while ((c = FUNC1(0)) & (1 << LCD_BUSY)) {
    }

    /* the address counter is updated 4us after the busy flag is cleared */
    FUNC0(LCD_DELAY_BUSY_FLAG);

    /* now read the address counter */
    return (FUNC1(0));  // return address counter

}