#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* send_func ) (TYPE_1__*,int,int,int,int) ;} ;
typedef  TYPE_1__ MidiDevice ;

/* Variables and functions */
 int MIDI_CC ; 
 int MIDI_CHANMASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int,int,int) ; 

void FUNC1(MidiDevice* device, uint8_t chan, uint8_t num, uint8_t val) {
    // CC Status: 0xB0 to 0xBF where the low nibble is the MIDI channel.
    // CC Data: Controller Num, Controller Val
    device->send_func(device, 3, MIDI_CC | (chan & MIDI_CHANMASK), num & 0x7F, val & 0x7F);
}