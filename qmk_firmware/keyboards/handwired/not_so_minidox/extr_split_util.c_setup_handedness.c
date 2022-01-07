
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EECONFIG_HANDEDNESS ;
 int eeprom_read_byte (int ) ;
 int has_usb () ;
 int isLeftHand ;

__attribute__((used)) static void setup_handedness(void) {







      isLeftHand = has_usb();


}
