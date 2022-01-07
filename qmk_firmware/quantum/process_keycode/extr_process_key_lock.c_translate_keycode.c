
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int QK_ONE_SHOT_MOD ;
 int QK_ONE_SHOT_MOD_MAX ;

__attribute__((used)) static inline uint16_t translate_keycode(uint16_t keycode) {
    if (keycode > QK_ONE_SHOT_MOD && keycode <= QK_ONE_SHOT_MOD_MAX) {
        return keycode ^ QK_ONE_SHOT_MOD;
    } else {
        return keycode;
    }
}
