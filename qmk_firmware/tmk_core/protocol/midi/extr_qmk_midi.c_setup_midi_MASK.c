#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  cc_callback ; 
 int /*<<< orphan*/  fallthrough_callback ; 
 int /*<<< orphan*/  midi_device ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysex_callback ; 
 int /*<<< orphan*/  usb_get_midi ; 
 int /*<<< orphan*/  usb_send_func ; 

void FUNC7(void) {
#ifdef MIDI_ADVANCED
    midi_init();
#endif
    FUNC0(&midi_device);
    FUNC2(&midi_device, usb_send_func);
    FUNC1(&midi_device, usb_get_midi);
    FUNC5(&midi_device, fallthrough_callback);
    FUNC4(&midi_device, cc_callback);
#ifdef API_SYSEX_ENABLE
    midi_register_sysex_callback(&midi_device, sysex_callback);
#endif
}