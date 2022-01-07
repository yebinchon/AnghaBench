
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS2_MOUSE_SEND_SAFE (int ,char*) ;
 int PS2_MOUSE_SET_SCALING_1_1 ;

void ps2_mouse_set_scaling_1_1(void) { PS2_MOUSE_SEND_SAFE(PS2_MOUSE_SET_SCALING_1_1, "ps2 mouse set scaling 1:1"); }
