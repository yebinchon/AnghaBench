
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int host_mouse_send (int *) ;
 int last_timer ;
 int mouse_report ;
 int mousekey_debug () ;
 int timer_read () ;

void mousekey_send(void) {
    mousekey_debug();
    host_mouse_send(&mouse_report);
    last_timer = timer_read();
}
