
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int midi_two_byte_func_t ;
struct TYPE_3__ {int input_songselect_callback; } ;
typedef TYPE_1__ MidiDevice ;



void midi_register_songselect_callback(MidiDevice* device, midi_two_byte_func_t func) { device->input_songselect_callback = func; }
