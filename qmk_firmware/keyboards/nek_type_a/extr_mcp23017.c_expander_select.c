
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int EXPANDER_PAUSE ;
 int EXPANDER_REG_IODIRA ;
 int EXPANDER_REG_IODIRB ;
 int EXPANDER_REG_OLATA ;
 int EXPANDER_REG_OLATB ;
 int bit_for_pin (int) ;
 int expander_write (int ,int const) ;
 int wait_us (int ) ;

void expander_select(uint8_t pin) {
    const uint8_t mask = 0xff & ~(1 << bit_for_pin(pin));
    if (pin < 8) {
        expander_write(EXPANDER_REG_IODIRA, mask);
        expander_write(EXPANDER_REG_OLATA, mask);
    } else {
        expander_write(EXPANDER_REG_IODIRB, mask);
        expander_write(EXPANDER_REG_OLATB, mask);
    }
    wait_us(EXPANDER_PAUSE);
}
