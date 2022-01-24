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
 int CHARGEPUMP ; 
 int COMSCANDEC ; 
 int COMSCANINC ; 
 int DISPLAYALLONRESUME ; 
 int DISPLAYOFF ; 
 int DISPLAYON ; 
 int /*<<< orphan*/  I2C_ADDRESS_SA0_1 ; 
 int LCDHEIGHT ; 
 int MEMORYMODE ; 
 int NORMALDISPLAY ; 
 int SEGREMAP ; 
 int SETCOMPINS ; 
 int SETCONTRAST ; 
 int SETDISPLAYCLOCKDIV ; 
 int SETDISPLAYOFFSET ; 
 int SETMULTIPLEX ; 
 int SETPRECHARGE ; 
 int SETSTARTLINE ; 
 int SETVCOMDESELECT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(void) {
    FUNC1();
    FUNC2(I2C_ADDRESS_SA0_1);

    // Display Init sequence for 64x48 OLED module
    FUNC4(DISPLAYOFF);  // 0xAE

    FUNC4(SETDISPLAYCLOCKDIV);  // 0xD5
    FUNC4(0x80);                // the suggested ratio 0x80

    FUNC4(SETMULTIPLEX);  // 0xA8
    FUNC4(LCDHEIGHT - 1);

    FUNC4(SETDISPLAYOFFSET);  // 0xD3
    FUNC4(0x00);              // no offset

    FUNC4(SETSTARTLINE | 0x00);  // line #0

    FUNC4(CHARGEPUMP);  // enable charge pump
    FUNC4(0x14);

    FUNC4(NORMALDISPLAY);       // 0xA6
    FUNC4(DISPLAYALLONRESUME);  // 0xA4

    // display at regular orientation
    FUNC4(SEGREMAP | 0x1);
    FUNC4(COMSCANDEC);

// rotate display 180
#ifdef micro_oled_rotate_180
    send_command(SEGREMAP);
    send_command(COMSCANINC);
#endif

    FUNC4(MEMORYMODE);
    FUNC4(0x10);

    FUNC4(SETCOMPINS);  // 0xDA
    if (LCDHEIGHT > 32) {
        FUNC4(0x12);
    } else {
        FUNC4(0x02);
    }
    FUNC4(SETCONTRAST);  // 0x81
    FUNC4(0x8F);

    FUNC4(SETPRECHARGE);  // 0xd9
    FUNC4(0xF1);

    FUNC4(SETVCOMDESELECT);  // 0xDB
    FUNC4(0x40);

    FUNC4(DISPLAYON);  //--turn on oled panel
    FUNC0();           // Erase hardware memory inside the OLED controller to avoid random data in memory.
    FUNC3();
}