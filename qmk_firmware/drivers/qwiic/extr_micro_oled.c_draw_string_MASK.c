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
 scalar_t__ TOTALFONTS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,char,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__* fonts_pointer ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (char*) ; 

void FUNC3(uint8_t x, uint8_t y, char* string, uint8_t color, uint8_t mode, uint8_t font) {
    if ((font >= TOTALFONTS) || (font < 0)) return;

    uint8_t fontType  = font;
    uint8_t fontWidth = FUNC1(fonts_pointer[fontType] + 0);

    uint8_t cur_x = x;
    for (int i = 0; i < FUNC2(string); i++) {
        FUNC0(cur_x, y, string[i], color, mode, font);
        cur_x += fontWidth + 1;
    }
}