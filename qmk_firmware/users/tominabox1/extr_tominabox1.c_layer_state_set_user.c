
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;





 int biton32 (int ) ;
 int update_tri_layer_state (int ,int,int,int) ;

uint32_t layer_state_set_user(uint32_t state) {
    state = update_tri_layer_state(state, 129, 128, 130);
    switch (biton32(state)) {
        case 129:
            break;
        case 128:
            break;
        case 130:
            break;
        default:
            break;
    }
    return state;
}
