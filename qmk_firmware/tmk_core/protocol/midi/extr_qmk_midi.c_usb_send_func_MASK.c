#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_3__ {int Data1; int Data2; int Data3; void* Event; } ;
typedef  int /*<<< orphan*/  MidiDevice ;
typedef  TYPE_1__ MIDI_EventPacket_t ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
#define  MIDI_SONGPOSITION 130 
#define  MIDI_SONGSELECT 129 
#define  MIDI_TC_QUARTERFRAME 128 
 int SYSEX_END ; 
 int SYSEX_ENDS_IN_1 ; 
 int SYSEX_ENDS_IN_2 ; 
 int SYSEX_ENDS_IN_3 ; 
 int SYSEX_START_OR_CONT ; 
 int SYS_COMMON_2 ; 
 int SYS_COMMON_3 ; 
 scalar_t__ UNDEFINED ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(MidiDevice* device, uint16_t cnt, uint8_t byte0, uint8_t byte1, uint8_t byte2) {
    MIDI_EventPacket_t event;
    event.Data1 = byte0;
    event.Data2 = byte1;
    event.Data3 = byte2;

    uint8_t cable = 0;

    // if the length is undefined we assume it is a SYSEX message
    if (FUNC1(byte0) == UNDEFINED) {
        switch (cnt) {
            case 3:
                if (byte2 == SYSEX_END)
                    event.Event = FUNC0(cable, SYSEX_ENDS_IN_3);
                else
                    event.Event = FUNC0(cable, SYSEX_START_OR_CONT);
                break;
            case 2:
                if (byte1 == SYSEX_END)
                    event.Event = FUNC0(cable, SYSEX_ENDS_IN_2);
                else
                    event.Event = FUNC0(cable, SYSEX_START_OR_CONT);
                break;
            case 1:
                if (byte0 == SYSEX_END)
                    event.Event = FUNC0(cable, SYSEX_ENDS_IN_1);
                else
                    event.Event = FUNC0(cable, SYSEX_START_OR_CONT);
                break;
            default:
                return;  // invalid cnt
        }
    } else {
        // deal with 'system common' messages
        // TODO are there any more?
        switch (byte0 & 0xF0) {
            case MIDI_SONGPOSITION:
                event.Event = FUNC0(cable, SYS_COMMON_3);
                break;
            case MIDI_SONGSELECT:
            case MIDI_TC_QUARTERFRAME:
                event.Event = FUNC0(cable, SYS_COMMON_2);
                break;
            default:
                event.Event = FUNC0(cable, byte0);
                break;
        }
    }

    FUNC2(&event);
}