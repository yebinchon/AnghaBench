
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int place_bit0 () ;
 int place_bit1 () ;

__attribute__((used)) static inline void send_byte(uint8_t data) {
    for (int i = 0; i < 8; i++) {
        if (data & (0x80 >> i))
            place_bit1();
        else
            place_bit0();
    }
}
