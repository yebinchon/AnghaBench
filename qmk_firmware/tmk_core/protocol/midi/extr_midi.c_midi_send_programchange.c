
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int (* send_func ) (TYPE_1__*,int,int,int,int ) ;} ;
typedef TYPE_1__ MidiDevice ;


 int MIDI_CHANMASK ;
 int MIDI_PROGCHANGE ;
 int stub1 (TYPE_1__*,int,int,int,int ) ;

void midi_send_programchange(MidiDevice* device, uint8_t chan, uint8_t num) { device->send_func(device, 2, MIDI_PROGCHANGE | (chan & MIDI_CHANMASK), num & 0x7F, 0); }
