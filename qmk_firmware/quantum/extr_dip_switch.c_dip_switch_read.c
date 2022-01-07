
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t uint32_t ;


 size_t NUMBER_OF_DIP_SWITCHES ;
 int * dip_switch_pad ;
 size_t* dip_switch_state ;
 int dip_switch_update_kb (size_t,size_t) ;
 int dip_switch_update_mask_kb (size_t) ;
 size_t* last_dip_switch_state ;
 int memcpy (size_t*,size_t*,int) ;
 int readPin (int ) ;

void dip_switch_read(bool forced) {
    bool has_dip_state_changed = 0;
    uint32_t dip_switch_mask = 0;

    for (uint8_t i = 0; i < NUMBER_OF_DIP_SWITCHES; i++) {
        dip_switch_state[i] = !readPin(dip_switch_pad[i]);
        dip_switch_mask |= dip_switch_state[i] << i;
        if (last_dip_switch_state[i] ^ dip_switch_state[i] || forced) {
            has_dip_state_changed = 1;
            dip_switch_update_kb(i, dip_switch_state[i]);
        }
    }
    if (has_dip_state_changed) {
        dip_switch_update_mask_kb(dip_switch_mask);
    }
    memcpy(last_dip_switch_state, dip_switch_state, sizeof(&dip_switch_state));
}
