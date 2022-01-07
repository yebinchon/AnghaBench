
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHARGEPUMP ;
 int COMSCANDEC ;
 int COMSCANINC ;
 int DISPLAYALLONRESUME ;
 int DISPLAYOFF ;
 int DISPLAYON ;
 int I2C_ADDRESS_SA0_1 ;
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
 int clear_screen () ;
 int i2c_init () ;
 int i2c_start (int ) ;
 int send_buffer () ;
 int send_command (int) ;

void micro_oled_init(void) {
    i2c_init();
    i2c_start(I2C_ADDRESS_SA0_1);


    send_command(DISPLAYOFF);

    send_command(SETDISPLAYCLOCKDIV);
    send_command(0x80);

    send_command(SETMULTIPLEX);
    send_command(LCDHEIGHT - 1);

    send_command(SETDISPLAYOFFSET);
    send_command(0x00);

    send_command(SETSTARTLINE | 0x00);

    send_command(CHARGEPUMP);
    send_command(0x14);

    send_command(NORMALDISPLAY);
    send_command(DISPLAYALLONRESUME);


    send_command(SEGREMAP | 0x1);
    send_command(COMSCANDEC);







    send_command(MEMORYMODE);
    send_command(0x10);

    send_command(SETCOMPINS);
    if (LCDHEIGHT > 32) {
        send_command(0x12);
    } else {
        send_command(0x02);
    }
    send_command(SETCONTRAST);
    send_command(0x8F);

    send_command(SETPRECHARGE);
    send_command(0xF1);

    send_command(SETVCOMDESELECT);
    send_command(0x40);

    send_command(DISPLAYON);
    clear_screen();
    send_buffer();
}
