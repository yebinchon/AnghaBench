
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_done ;
 int system_init_done_cb (int ) ;
 int system_timer_reinit () ;

void user_init(void) {
    system_timer_reinit();
    system_init_done_cb(init_done);
}
