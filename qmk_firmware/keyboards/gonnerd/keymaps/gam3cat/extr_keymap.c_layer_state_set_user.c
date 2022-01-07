
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int biton32 (int ) ;
 int custom_backlight_level (int) ;

uint32_t layer_state_set_user(uint32_t state) {
    switch (biton32(state)) {
        case 133:
            custom_backlight_level(0);
            break;
        case 128:
        case 129:
        case 131:
        case 132:
            custom_backlight_level(1);
            break;
        case 130:
            custom_backlight_level(2);
            break;
        case 134:
            custom_backlight_level(3);
            break;
        default:
            custom_backlight_level(0);
            break;
    }
    return state;
}
