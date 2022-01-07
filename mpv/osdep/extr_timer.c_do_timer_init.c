
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MP_START_TIME ;
 int mp_raw_time_init () ;
 int mp_raw_time_us () ;
 int raw_time_offset ;
 int srand (int ) ;

__attribute__((used)) static void do_timer_init(void)
{
    mp_raw_time_init();
    srand(mp_raw_time_us());
    raw_time_offset = mp_raw_time_us();



    raw_time_offset -= MP_START_TIME;
}
