
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int long_frame; scalar_t__ data_pos; scalar_t__ next_zero; } ;
typedef TYPE_1__ byte_stuffer_state_t ;



void init_byte_stuffer_state(byte_stuffer_state_t* state) {
    state->next_zero = 0;
    state->data_pos = 0;
    state->long_frame = 0;
}
