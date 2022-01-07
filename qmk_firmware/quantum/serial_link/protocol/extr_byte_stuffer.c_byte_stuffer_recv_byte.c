
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_4__ {size_t next_zero; int long_frame; scalar_t__ data_pos; size_t* data; } ;
typedef TYPE_1__ byte_stuffer_state_t ;


 scalar_t__ MAX_FRAME_SIZE ;
 int init_byte_stuffer_state (TYPE_1__*) ;
 TYPE_1__* states ;
 int validator_recv_frame (size_t,size_t*,scalar_t__) ;

void byte_stuffer_recv_byte(uint8_t link, uint8_t data) {
    byte_stuffer_state_t* state = &states[link];

    if (state->next_zero == 0) {
        state->next_zero = data;
        state->long_frame = data == 0xFF;
        state->data_pos = 0;
        return;
    }

    state->next_zero--;
    if (data == 0) {
        if (state->next_zero == 0) {

            if (state->data_pos > 0) {
                validator_recv_frame(link, state->data, state->data_pos);
            }
        } else {

            init_byte_stuffer_state(state);
        }
    } else {
        if (state->data_pos == MAX_FRAME_SIZE) {


            state->next_zero = data;
            state->long_frame = data == 0xFF;
            state->data_pos = 0;
        } else if (state->next_zero == 0) {
            if (state->long_frame) {

                state->next_zero = data;
                state->long_frame = data == 0xFF;
            } else {

                state->next_zero = data;
                state->data[state->data_pos++] = 0;
            }
        } else {
            state->data[state->data_pos++] = data;
        }
    }
}
