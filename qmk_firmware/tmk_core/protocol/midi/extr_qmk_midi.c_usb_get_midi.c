
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int midi_packet_length_t ;
struct TYPE_3__ {scalar_t__ Event; int Data3; int Data2; int Data1; } ;
typedef int MidiDevice ;
typedef TYPE_1__ MIDI_EventPacket_t ;


 scalar_t__ MIDI_EVENT (int ,int ) ;
 int SYSEX_ENDS_IN_1 ;
 int SYSEX_ENDS_IN_2 ;
 int SYSEX_ENDS_IN_3 ;
 int SYSEX_START_OR_CONT ;
 int UNDEFINED ;
 int midi_device_input (int *,int,int *) ;
 int midi_packet_length (int ) ;
 scalar_t__ recv_midi_packet (TYPE_1__*) ;

__attribute__((used)) static void usb_get_midi(MidiDevice* device) {
    MIDI_EventPacket_t event;
    while (recv_midi_packet(&event)) {
        midi_packet_length_t length = midi_packet_length(event.Data1);
        uint8_t input[3];
        input[0] = event.Data1;
        input[1] = event.Data2;
        input[2] = event.Data3;
        if (length == UNDEFINED) {

            if (event.Event == MIDI_EVENT(0, SYSEX_START_OR_CONT) || event.Event == MIDI_EVENT(0, SYSEX_ENDS_IN_3)) {
                length = 3;
            } else if (event.Event == MIDI_EVENT(0, SYSEX_ENDS_IN_2)) {
                length = 2;
            } else if (event.Event == MIDI_EVENT(0, SYSEX_ENDS_IN_1)) {
                length = 1;
            } else {

            }
        }


        if (length != UNDEFINED) midi_device_input(device, length, input);
    }
}
