
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;


 int debug_mouse ;
 int phex (int ) ;
 int print (char*) ;

void usb_mouse_print(int8_t x, int8_t y, int8_t wheel_v, int8_t wheel_h, uint8_t buttons) {
    if (!debug_mouse) return;
    print("usb_mouse[btn|x y v h]: ");
    phex(buttons);
    print("|");
    phex(x);
    print(" ");
    phex(y);
    print(" ");
    phex(wheel_v);
    print(" ");
    phex(wheel_h);
    print("\n");
}
