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

/* Variables and functions */
 int LCD_DDRAM ; 
 scalar_t__ LCD_DISP_LENGTH ; 
 scalar_t__ LCD_START_LINE1 ; 
 scalar_t__ LCD_START_LINE2 ; 
 scalar_t__ LCD_START_LINE3 ; 
 scalar_t__ LCD_START_LINE4 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char,int) ; 

void FUNC3(char c) {
    uint8_t pos;

    pos = FUNC1();  // read busy-flag and address counter
    if (c == '\n') {
        FUNC0(pos);
    } else {
#if LCD_WRAP_LINES == 1
#    if LCD_LINES == 1
        if (pos == LCD_START_LINE1 + LCD_DISP_LENGTH) {
            lcd_write((1 << LCD_DDRAM) + LCD_START_LINE1, 0);
        }
#    elif LCD_LINES == 2
        if (pos == LCD_START_LINE1 + LCD_DISP_LENGTH) {
            lcd_write((1 << LCD_DDRAM) + LCD_START_LINE2, 0);
        } else if (pos == LCD_START_LINE2 + LCD_DISP_LENGTH) {
            lcd_write((1 << LCD_DDRAM) + LCD_START_LINE1, 0);
        }
#    elif LCD_LINES == 4
        if (pos == LCD_START_LINE1 + LCD_DISP_LENGTH) {
            lcd_write((1 << LCD_DDRAM) + LCD_START_LINE2, 0);
        } else if (pos == LCD_START_LINE2 + LCD_DISP_LENGTH) {
            lcd_write((1 << LCD_DDRAM) + LCD_START_LINE3, 0);
        } else if (pos == LCD_START_LINE3 + LCD_DISP_LENGTH) {
            lcd_write((1 << LCD_DDRAM) + LCD_START_LINE4, 0);
        } else if (pos == LCD_START_LINE4 + LCD_DISP_LENGTH) {
            lcd_write((1 << LCD_DDRAM) + LCD_START_LINE1, 0);
        }
#    endif
        lcd_waitbusy();
#endif
        FUNC2(c, 1);
    }

}