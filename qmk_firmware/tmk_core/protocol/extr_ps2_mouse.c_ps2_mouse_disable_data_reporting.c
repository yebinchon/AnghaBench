
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PS2_MOUSE_DISABLE_DATA_REPORTING ;
 int PS2_MOUSE_SEND (int ,char*) ;

void ps2_mouse_disable_data_reporting(void) { PS2_MOUSE_SEND(PS2_MOUSE_DISABLE_DATA_REPORTING, "ps2 mouse disable data reporting"); }
