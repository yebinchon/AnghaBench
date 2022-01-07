
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int GPIOB ;



 int biton32 (int ) ;
 int palClearPad (int ,int) ;
 int palSetPad (int ,int) ;
 int update_tri_layer_state (int ,int const,int const,int const) ;

uint32_t layer_state_set_user(uint32_t state) {
    palClearPad(GPIOB, 8);
    palClearPad(GPIOB, 9);
    uint8_t layer = biton32(state);
    switch (layer) {
        case 129:
            palSetPad(GPIOB, 9);
            break;
        case 128:
            palSetPad(GPIOB, 8);
            break;
        case 130:
            palSetPad(GPIOB, 9);
            palSetPad(GPIOB, 8);
            break;
        default:
            break;
    }
    return update_tri_layer_state(state, 129, 128, 130);
}
