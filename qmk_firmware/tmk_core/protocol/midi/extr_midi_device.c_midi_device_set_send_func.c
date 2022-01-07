
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int midi_var_byte_func_t ;
struct TYPE_3__ {int send_func; } ;
typedef TYPE_1__ MidiDevice ;



void midi_device_set_send_func(MidiDevice* device, midi_var_byte_func_t send_func) { device->send_func = send_func; }
