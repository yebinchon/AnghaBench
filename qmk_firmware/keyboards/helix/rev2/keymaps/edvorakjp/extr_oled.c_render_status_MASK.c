#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct CharacterMatrix {int dummy; } ;
typedef  int /*<<< orphan*/  led ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int member_0; int member_1; int /*<<< orphan*/  member_2; } ;
struct TYPE_3__ {int member_0; int member_1; int /*<<< orphan*/  member_2; } ;

/* Variables and functions */
#define  L_BASE 130 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int USB_LED_CAPS_LOCK ; 
 int USB_LED_NUM_LOCK ; 
 int USB_LED_SCROLL_LOCK ; 
#define  _LOWER 129 
#define  _RAISE 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC4 (struct CharacterMatrix*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct CharacterMatrix*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,...) ; 

void FUNC7(struct CharacterMatrix *matrix) {

  // Render to mode icon
  static char logo[][2][3] = {{{0x95,0x96,0},{0xb5,0xb6,0}},{{0x97,0x98,0},{0xb7,0xb8,0}}};
  int mode_number = FUNC2() ? 0 : 1;
  FUNC4(matrix, logo[mode_number][0]);
  FUNC4(matrix, "\n");
  FUNC4(matrix, logo[mode_number][1]);

  // Define layers here, Have not worked out how to have text displayed for each layer. Copy down the number you see and add a case for it below
  char buf[40];
  FUNC6(buf,sizeof(buf), "Undef-%ld", layer_state);
  FUNC5(matrix, FUNC0("\nLayer: "));
  switch (FUNC1(layer_state)) {
    case L_BASE:
      FUNC5(matrix, FUNC0("Default"));
      break;
    case _RAISE:
      FUNC5(matrix, FUNC0("Raise"));
      break;
    case _LOWER:
      FUNC5(matrix, FUNC0("Lower"));
      break;
    default:
      FUNC4(matrix, buf);
  }

  // Host Keyboard LED Status
  char led[40];
  FUNC6(led, sizeof(led), "\n%s %s %s",
      (FUNC3() & (1<<USB_LED_NUM_LOCK)) ? "NMLK" : "    ",
      (FUNC3() & (1<<USB_LED_CAPS_LOCK)) ? "CAPS" : "    ",
      (FUNC3() & (1<<USB_LED_SCROLL_LOCK)) ? "SCLK" : "    ");
  FUNC4(matrix, led);
}