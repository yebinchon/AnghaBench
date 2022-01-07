
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int _delay_us (int) ;
 int attention () ;
 int cli () ;
 int place_bit0 () ;
 int place_bit1 () ;
 int sei () ;
 int send_byte (int ) ;

void adb_host_listen(uint8_t cmd, uint8_t data_h, uint8_t data_l) {
    cli();
    attention();
    send_byte(cmd);
    place_bit0();
    _delay_us(200);
    place_bit1();
    send_byte(data_h);
    send_byte(data_l);
    place_bit0();
    sei();
}
