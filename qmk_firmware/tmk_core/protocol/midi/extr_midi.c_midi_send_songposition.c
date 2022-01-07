
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int (* send_func ) (TYPE_1__*,int,int ,int,int) ;} ;
typedef TYPE_1__ MidiDevice ;


 int MIDI_SONGPOSITION ;
 int stub1 (TYPE_1__*,int,int ,int,int) ;

void midi_send_songposition(MidiDevice* device, uint16_t pos) { device->send_func(device, 3, MIDI_SONGPOSITION, pos & 0x7F, (pos >> 7) & 0x7F); }
