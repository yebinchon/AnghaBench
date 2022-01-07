
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASYNC_MODE_CLEAR ;
 scalar_t__ MILLISECONDS_PER_MACRO_TICK ;
 scalar_t__ async_delay ;
 int async_mode ;
 scalar_t__ async_tick ;
 int wait_for_event () ;
 int wakeup_event ;

void microbit_display_clear(void) {

    wakeup_event = 0;
    async_mode = ASYNC_MODE_CLEAR;
    async_tick = async_delay - MILLISECONDS_PER_MACRO_TICK;
    wait_for_event();
}
