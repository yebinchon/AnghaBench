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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int midi_packet_length_t ;
struct TYPE_3__ {scalar_t__ Event; int /*<<< orphan*/  Data3; int /*<<< orphan*/  Data2; int /*<<< orphan*/  Data1; } ;
typedef  int /*<<< orphan*/  MidiDevice ;
typedef  TYPE_1__ MIDI_EventPacket_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSEX_ENDS_IN_1 ; 
 int /*<<< orphan*/  SYSEX_ENDS_IN_2 ; 
 int /*<<< orphan*/  SYSEX_ENDS_IN_3 ; 
 int /*<<< orphan*/  SYSEX_START_OR_CONT ; 
 int UNDEFINED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(MidiDevice* device) {
    MIDI_EventPacket_t event;
    while (FUNC3(&event)) {
        midi_packet_length_t length = FUNC2(event.Data1);
        uint8_t              input[3];
        input[0] = event.Data1;
        input[1] = event.Data2;
        input[2] = event.Data3;
        if (length == UNDEFINED) {
            // sysex
            if (event.Event == FUNC0(0, SYSEX_START_OR_CONT) || event.Event == FUNC0(0, SYSEX_ENDS_IN_3)) {
                length = 3;
            } else if (event.Event == FUNC0(0, SYSEX_ENDS_IN_2)) {
                length = 2;
            } else if (event.Event == FUNC0(0, SYSEX_ENDS_IN_1)) {
                length = 1;
            } else {
                // XXX what to do?
            }
        }

        // pass the data to the device input function
        if (length != UNDEFINED) FUNC1(device, length, input);
    }
}