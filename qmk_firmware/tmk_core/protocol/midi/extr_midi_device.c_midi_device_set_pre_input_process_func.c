
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int midi_no_byte_func_t ;
struct TYPE_3__ {int pre_input_process_callback; } ;
typedef TYPE_1__ MidiDevice ;



void midi_device_set_pre_input_process_func(MidiDevice* device, midi_no_byte_func_t pre_process_func) { device->pre_input_process_callback = pre_process_func; }
