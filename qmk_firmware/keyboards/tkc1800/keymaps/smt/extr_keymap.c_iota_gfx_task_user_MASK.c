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
typedef  int uint8_t ;
struct CharacterMatrix {int dummy; } ;
typedef  int /*<<< orphan*/  led ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int USB_LED_CAPS_LOCK ; 
 int USB_LED_NUM_LOCK ; 
 int USB_LED_SCROLL_LOCK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ debug_enable ; 
 int /*<<< orphan*/  display ; 
 int FUNC2 () ; 
 char** layer_lookup ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC3 (struct CharacterMatrix*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct CharacterMatrix*) ; 
 int /*<<< orphan*/  FUNC5 (struct CharacterMatrix*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct CharacterMatrix*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,...) ; 

void FUNC8(void) {
  #if DEBUG_TO_SCREEN
    if (debug_enable) {
      return;
    }
  #endif

  struct CharacterMatrix matrix;

  FUNC3(&matrix);
  FUNC6(&matrix, FUNC0("TKC1800"));

  uint8_t layer = FUNC1(layer_state);

  char buf[40];
  FUNC7(buf,sizeof(buf), "Undef-%d", layer);
  FUNC6(&matrix, FUNC0("\nLayer: "));
  FUNC5(&matrix, layer_lookup[layer]);

  // Host Keyboard LED Status
  char led[40];
    FUNC7(led, sizeof(led), "\n\n%s  %s  %s",
            (FUNC2() & (1<<USB_LED_NUM_LOCK)) ? "NUMLOCK" : "       ",
            (FUNC2() & (1<<USB_LED_CAPS_LOCK)) ? "CAPS" : "    ",
            (FUNC2() & (1<<USB_LED_SCROLL_LOCK)) ? "SCLK" : "    ");
  FUNC5(&matrix, led);
  FUNC4(&display, &matrix);
}