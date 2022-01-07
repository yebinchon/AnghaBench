
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS2_MOUSE_SEND_SAFE (int ,char*) ;
 int PS2_MOUSE_SET_STREAM_MODE ;
 int PS2_MOUSE_STREAM_MODE ;
 int ps2_mouse_mode ;

void ps2_mouse_set_stream_mode(void) {
    PS2_MOUSE_SEND_SAFE(PS2_MOUSE_SET_STREAM_MODE, "ps2 mouse set stream mode");
    ps2_mouse_mode = PS2_MOUSE_STREAM_MODE;
}
