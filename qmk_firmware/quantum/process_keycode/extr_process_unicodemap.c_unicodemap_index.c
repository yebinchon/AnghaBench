
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int IS_HOST_LED_ON (int ) ;
 int MOD_MASK_SHIFT ;
 scalar_t__ QK_UNICODEMAP ;
 scalar_t__ QK_UNICODEMAP_PAIR ;
 int USB_LED_CAPS_LOCK ;
 int unicode_saved_mods ;

__attribute__((weak)) uint16_t unicodemap_index(uint16_t keycode) {
    if (keycode >= QK_UNICODEMAP_PAIR) {

        uint16_t index = keycode - QK_UNICODEMAP_PAIR;

        bool shift = unicode_saved_mods & MOD_MASK_SHIFT, caps = IS_HOST_LED_ON(USB_LED_CAPS_LOCK);
        if (shift ^ caps) {
            index >>= 7;
        }

        return index & 0x7F;
    } else {

        return keycode - QK_UNICODEMAP;
    }
}
