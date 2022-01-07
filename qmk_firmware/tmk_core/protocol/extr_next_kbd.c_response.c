
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 scalar_t__ NEXT_KBD_READ ;
 int NEXT_KBD_TIMING ;
 int _delay_us (int) ;
 int cli () ;
 int reset () ;
 int sei () ;

__attribute__((used)) static inline uint32_t response(void) {
    cli();




    uint8_t i = 0;
    uint32_t data = 0;
    uint16_t reset_timeout = 50000;
    while (NEXT_KBD_READ && reset_timeout) {
        asm("");
        _delay_us(1);
        reset_timeout--;
    }
    if (!reset_timeout) {
        reset();
        sei();
        return 0;
    }
    _delay_us(NEXT_KBD_TIMING / 2);
    for (; i < 22; i++) {
        if (NEXT_KBD_READ) {
            data |= ((uint32_t)1 << i);
            if (i == 10) {
                i++;
                while (NEXT_KBD_READ)
                    ;
                _delay_us(NEXT_KBD_TIMING / 2);
            }
        } else {



            data |= ((uint32_t)0 << i);
        }
        _delay_us(NEXT_KBD_TIMING);
    }

    sei();

    return data;
}
