
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int (* send_func ) (TYPE_1__*,int,int,int,int) ;} ;
typedef TYPE_1__ MidiDevice ;


 int MIDI_CC ;
 int MIDI_CHANMASK ;
 int stub1 (TYPE_1__*,int,int,int,int) ;

void midi_send_cc(MidiDevice* device, uint8_t chan, uint8_t num, uint8_t val) {


    device->send_func(device, 3, MIDI_CC | (chan & MIDI_CHANMASK), num & 0x7F, val & 0x7F);
}
