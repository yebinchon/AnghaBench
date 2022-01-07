
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* MP_STATE_THREAD ;



void mp_stack_ctrl_init(void) {
    volatile int stack_dummy;
    MP_STATE_THREAD(stack_top) = (char*)&stack_dummy;
}
