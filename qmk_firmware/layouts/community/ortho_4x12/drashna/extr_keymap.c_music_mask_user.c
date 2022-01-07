
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
bool music_mask_user(uint16_t keycode) {
    switch (keycode) {
        case 129:
        case 130:
        case 133:
        case 128:
        case 132:
        case 131:
            return 0;
        default:
            return 1;
    }
}
