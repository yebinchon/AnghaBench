
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ps2_mouse_sample_rate_t ;


 int PS2_MOUSE_SET_SAFE (int ,int ,char*) ;
 int PS2_MOUSE_SET_SAMPLE_RATE ;

void ps2_mouse_set_sample_rate(ps2_mouse_sample_rate_t sample_rate) { PS2_MOUSE_SET_SAFE(PS2_MOUSE_SET_SAMPLE_RATE, sample_rate, "ps2 mouse set sample rate"); }
