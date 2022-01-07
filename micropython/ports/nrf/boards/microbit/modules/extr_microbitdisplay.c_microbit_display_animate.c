
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;
typedef int mp_int_t ;
typedef int microbit_display_obj_t ;


 int ASYNC_MODE_ANIMATION ;
 int ** MP_STATE_PORT (int ) ;
 int async_clear ;
 int async_data ;
 int async_delay ;
 int * async_iterator ;
 int async_mode ;
 scalar_t__ async_tick ;
 int draw_object (int ) ;
 int * mp_getiter (int ,int *) ;
 int mp_iternext_allow_raise (int *) ;
 int wait_for_event () ;
 int wakeup_event ;

void microbit_display_animate(microbit_display_obj_t *self, mp_obj_t iterable, mp_int_t delay, bool clear, bool wait) {

    MP_STATE_PORT(async_data)[0] = ((void*)0);
    MP_STATE_PORT(async_data)[1] = ((void*)0);
    async_iterator = mp_getiter(iterable, ((void*)0));
    async_delay = delay;
    async_clear = clear;
    MP_STATE_PORT(async_data)[0] = self;
    MP_STATE_PORT(async_data)[1] = async_iterator;
    wakeup_event = 0;
    mp_obj_t obj = mp_iternext_allow_raise(async_iterator);
    draw_object(obj);
    async_tick = 0;
    async_mode = ASYNC_MODE_ANIMATION;
    if (wait) {
        wait_for_event();
    }
}
