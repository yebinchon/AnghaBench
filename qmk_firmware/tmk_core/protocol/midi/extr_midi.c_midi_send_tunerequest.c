
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* send_func ) (TYPE_1__*,int,int ,int ,int ) ;} ;
typedef TYPE_1__ MidiDevice ;


 int MIDI_TUNEREQUEST ;
 int stub1 (TYPE_1__*,int,int ,int ,int ) ;

void midi_send_tunerequest(MidiDevice* device) { device->send_func(device, 1, MIDI_TUNEREQUEST, 0, 0); }
