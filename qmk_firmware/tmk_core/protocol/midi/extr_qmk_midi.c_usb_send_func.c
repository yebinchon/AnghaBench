
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int Data1; int Data2; int Data3; void* Event; } ;
typedef int MidiDevice ;
typedef TYPE_1__ MIDI_EventPacket_t ;


 void* MIDI_EVENT (int,int) ;



 int SYSEX_END ;
 int SYSEX_ENDS_IN_1 ;
 int SYSEX_ENDS_IN_2 ;
 int SYSEX_ENDS_IN_3 ;
 int SYSEX_START_OR_CONT ;
 int SYS_COMMON_2 ;
 int SYS_COMMON_3 ;
 scalar_t__ UNDEFINED ;
 scalar_t__ midi_packet_length (int) ;
 int send_midi_packet (TYPE_1__*) ;

__attribute__((used)) static void usb_send_func(MidiDevice* device, uint16_t cnt, uint8_t byte0, uint8_t byte1, uint8_t byte2) {
    MIDI_EventPacket_t event;
    event.Data1 = byte0;
    event.Data2 = byte1;
    event.Data3 = byte2;

    uint8_t cable = 0;


    if (midi_packet_length(byte0) == UNDEFINED) {
        switch (cnt) {
            case 3:
                if (byte2 == SYSEX_END)
                    event.Event = MIDI_EVENT(cable, SYSEX_ENDS_IN_3);
                else
                    event.Event = MIDI_EVENT(cable, SYSEX_START_OR_CONT);
                break;
            case 2:
                if (byte1 == SYSEX_END)
                    event.Event = MIDI_EVENT(cable, SYSEX_ENDS_IN_2);
                else
                    event.Event = MIDI_EVENT(cable, SYSEX_START_OR_CONT);
                break;
            case 1:
                if (byte0 == SYSEX_END)
                    event.Event = MIDI_EVENT(cable, SYSEX_ENDS_IN_1);
                else
                    event.Event = MIDI_EVENT(cable, SYSEX_START_OR_CONT);
                break;
            default:
                return;
        }
    } else {


        switch (byte0 & 0xF0) {
            case 130:
                event.Event = MIDI_EVENT(cable, SYS_COMMON_3);
                break;
            case 129:
            case 128:
                event.Event = MIDI_EVENT(cable, SYS_COMMON_2);
                break;
            default:
                event.Event = MIDI_EVENT(cable, byte0);
                break;
        }
    }

    send_midi_packet(&event);
}
