
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int current_default_layer ;

uint32_t default_layer_state_set_kb(uint32_t state) {


    current_default_layer = state - 1;

    if ( current_default_layer == 3 ) current_default_layer -= 1;

    if ( current_default_layer == 7 ) current_default_layer -= 4;

    if ( current_default_layer == 15 ) current_default_layer -= 11;
    return state;
}
