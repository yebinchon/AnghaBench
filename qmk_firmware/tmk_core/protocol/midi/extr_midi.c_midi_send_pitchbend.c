
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_4__ {int (* send_func ) (TYPE_1__*,int,int,int,int) ;} ;
typedef TYPE_1__ MidiDevice ;


 int MIDI_CHANMASK ;
 int MIDI_PITCHBEND ;
 int stub1 (TYPE_1__*,int,int,int,int) ;

void midi_send_pitchbend(MidiDevice* device, uint8_t chan, int16_t amt) {
    uint16_t uAmt;

    if (amt > 0x1fff) {
        uAmt = 0x3FFF;
    } else if (amt < -0x2000) {
        uAmt = 0;
    } else {
        uAmt = amt + 0x2000;
    }
    device->send_func(device, 3, MIDI_PITCHBEND | (chan & MIDI_CHANMASK), uAmt & 0x7F, (uAmt >> 7) & 0x7F);
}
