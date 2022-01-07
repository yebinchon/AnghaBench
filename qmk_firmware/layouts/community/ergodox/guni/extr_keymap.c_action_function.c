
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int keyrecord_t ;


 scalar_t__ TEENSY_KEY ;
 int bootloader_jump () ;
 int clear_keyboard () ;
 int print (char*) ;
 int wait_ms (int) ;

void action_function(keyrecord_t *event, uint8_t id, uint8_t opt)
{

    if (id == TEENSY_KEY) {
        clear_keyboard();
        print("\n\nJump to bootloader... ");
        wait_ms(250);
        bootloader_jump();
        print("not supported.\n");
    }
}
