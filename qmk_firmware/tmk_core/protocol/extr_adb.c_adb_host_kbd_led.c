
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int adb_host_listen (int,int ,int) ;

void adb_host_kbd_led(uint8_t led) {



    adb_host_listen(0x2A, 0, led & 0x07);
}
