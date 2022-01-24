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
struct CharacterMatrix {int dummy; } ;
typedef  int /*<<< orphan*/  led ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
#define  DEVICE_STATE_Addressed 137 
#define  DEVICE_STATE_Configured 136 
#define  DEVICE_STATE_Default 135 
#define  DEVICE_STATE_Powered 134 
#define  DEVICE_STATE_Suspended 133 
#define  DEVICE_STATE_Unattached 132 
#define  L_ADJUST 131 
#define  L_BASE 130 
#define  L_LOWER 129 
#define  L_RAISE 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int USB_DeviceState ; 
 int USB_LED_CAPS_LOCK ; 
 int USB_LED_NUM_LOCK ; 
 int USB_LED_SCROLL_LOCK ; 
 scalar_t__ debug_enable ; 
 int /*<<< orphan*/  display ; 
 int FUNC1 () ; 
 int layer_state ; 
 int /*<<< orphan*/  FUNC2 (struct CharacterMatrix*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct CharacterMatrix*) ; 
 int /*<<< orphan*/  FUNC4 (struct CharacterMatrix*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct CharacterMatrix*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,...) ; 

void FUNC7(void) {
#if DEBUG_TO_SCREEN
  if (debug_enable) {
    return;
  }
#endif

  struct CharacterMatrix matrix;

  FUNC2(&matrix);
  FUNC5(&matrix, FUNC0("USB: "));
#ifdef PROTOCOL_LUFA
  switch (USB_DeviceState) {
    case DEVICE_STATE_Unattached:
      matrix_write_P(&matrix, PSTR("Unattached"));
      break;
    case DEVICE_STATE_Suspended:
      matrix_write_P(&matrix, PSTR("Suspended"));
      break;
    case DEVICE_STATE_Configured:
      matrix_write_P(&matrix, PSTR("Connected"));
      break;
    case DEVICE_STATE_Powered:
      matrix_write_P(&matrix, PSTR("Powered"));
      break;
    case DEVICE_STATE_Default:
      matrix_write_P(&matrix, PSTR("Default"));
      break;
    case DEVICE_STATE_Addressed:
      matrix_write_P(&matrix, PSTR("Addressed"));
      break;
    default:
      matrix_write_P(&matrix, PSTR("Invalid"));
  }
#endif

// Define layers here, Have not worked out how to have text displayed for each layer. Copy down the number you see and add a case for it below

  char buf[40];
  FUNC6(buf,sizeof(buf), "Undef-%ld", layer_state);
  FUNC5(&matrix, FUNC0("\n\nLayer: "));
    switch (layer_state) {
        case L_BASE:
           FUNC5(&matrix, FUNC0("Default"));
           break;
        case L_RAISE:
           FUNC5(&matrix, FUNC0("Raise"));
           break;
        case L_LOWER:
           FUNC5(&matrix, FUNC0("Lower"));
           break;
        case L_ADJUST:
           FUNC5(&matrix, FUNC0("ADJUST"));
           break;
        default:
           FUNC4(&matrix, buf);
 }

  // Host Keyboard LED Status
  char led[40];
    FUNC6(led, sizeof(led), "\n%s  %s  %s",
            (FUNC1() & (1<<USB_LED_NUM_LOCK)) ? "NUMLOCK" : "       ",
            (FUNC1() & (1<<USB_LED_CAPS_LOCK)) ? "CAPS" : "    ",
            (FUNC1() & (1<<USB_LED_SCROLL_LOCK)) ? "SCLK" : "    ");
  FUNC4(&matrix, led);
  FUNC3(&display, &matrix);
}