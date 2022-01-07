
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* MP_STATE_THREAD ;



void mp_stack_set_top(void *top) {
    MP_STATE_THREAD(stack_top) = top;
}
