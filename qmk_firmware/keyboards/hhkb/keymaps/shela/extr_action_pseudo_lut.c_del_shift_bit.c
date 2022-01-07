
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int SHIFT_BIT_SIZE ;
 int dprintf (char*,int) ;
 int* send_key_shift_bit ;

void del_shift_bit(uint16_t keycode) {
    if ((keycode >> 3) < SHIFT_BIT_SIZE) {
        send_key_shift_bit[keycode >> 3] &= ~(1 << (keycode & 7));
    } else {
        dprintf("del_shift_bit: Can't delete shift bit. keycode: %02X\n", keycode);
    }
}
