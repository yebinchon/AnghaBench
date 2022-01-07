
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;





bool music_mask_user(uint16_t keycode) {
    switch (keycode) {
        case 128:
        case 129:
            return 0;
        default:
            return 1;
    }
}
