
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ps2_mouse_resolution_t ;


 int PS2_MOUSE_SET_RESOLUTION ;
 int PS2_MOUSE_SET_SAFE (int ,int ,char*) ;

void ps2_mouse_set_resolution(ps2_mouse_resolution_t resolution) { PS2_MOUSE_SET_SAFE(PS2_MOUSE_SET_RESOLUTION, resolution, "ps2 mouse set resolution"); }
