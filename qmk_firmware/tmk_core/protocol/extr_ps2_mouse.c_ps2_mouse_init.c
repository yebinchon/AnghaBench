
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS2_MOUSE_INIT_DELAY ;
 int PS2_MOUSE_RECEIVE (char*) ;
 int PS2_MOUSE_RESET ;
 int PS2_MOUSE_SEND (int ,char*) ;
 int _delay_ms (int ) ;
 int ps2_host_init () ;
 int ps2_mouse_enable_data_reporting () ;
 int ps2_mouse_enable_scrolling () ;
 int ps2_mouse_init_user () ;
 int ps2_mouse_set_remote_mode () ;
 int ps2_mouse_set_scaling_2_1 () ;

void ps2_mouse_init(void) {
    ps2_host_init();

    _delay_ms(PS2_MOUSE_INIT_DELAY);

    PS2_MOUSE_SEND(PS2_MOUSE_RESET, "ps2_mouse_init: sending reset");

    PS2_MOUSE_RECEIVE("ps2_mouse_init: read BAT");
    PS2_MOUSE_RECEIVE("ps2_mouse_init: read DevID");




    ps2_mouse_enable_data_reporting();
    ps2_mouse_init_user();
}
