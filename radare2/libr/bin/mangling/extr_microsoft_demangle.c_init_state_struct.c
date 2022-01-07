
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buff_for_parsing; int err; scalar_t__ amount_of_read_chars; int state; } ;
typedef TYPE_1__ SStateInfo ;


 int eTCStateMachineErrOK ;
 int eTCStateStart ;

__attribute__((used)) static void init_state_struct(SStateInfo *state, char *buff_for_parsing) {
 state->state = eTCStateStart;
 state->buff_for_parsing = buff_for_parsing;
 state->amount_of_read_chars = 0;
 state->err = eTCStateMachineErrOK;
}
