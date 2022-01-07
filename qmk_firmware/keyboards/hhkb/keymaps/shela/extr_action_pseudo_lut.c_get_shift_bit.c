
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int SHIFT_BIT_SIZE ;
 int dprintf (char*,int) ;
 int* send_key_shift_bit ;

uint8_t get_shift_bit(uint16_t keycode) {
    if ((keycode >> 3) < SHIFT_BIT_SIZE) {
        return send_key_shift_bit[keycode >> 3] & (1 << (keycode & 7));
    } else {
        dprintf("get_shift_bit: Can't get shift bit. keycode: %02X\n", keycode);
        return 0;
    }
}
