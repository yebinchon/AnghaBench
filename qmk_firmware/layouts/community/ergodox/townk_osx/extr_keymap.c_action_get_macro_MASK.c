#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  macro_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  A ; 
 int /*<<< orphan*/  C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  ESC ; 
 int /*<<< orphan*/  LCTRL ; 
 int /*<<< orphan*/  LGUI ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
#define  MACRO_OSX_COPY 131 
#define  MACRO_OSX_PASTE 130 
#define  MACRO_TMUX_ESC 129 
#define  MACRO_TMUX_PASTE 128 
 int /*<<< orphan*/  P ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V ; 

const macro_t *FUNC4(keyrecord_t *record, uint8_t id, uint8_t opt) {
  // MACRODOWN only works in this function
  switch(id) {
    case MACRO_TMUX_ESC:
      if (record->event.pressed) {
        return FUNC1(FUNC0(LCTRL), FUNC2(A), FUNC3(LCTRL), FUNC0(ESC), END);
      }
      return FUNC1(FUNC3(ESC), END);
    case MACRO_TMUX_PASTE:
      if (record->event.pressed) {
        return FUNC1(FUNC0(LCTRL), FUNC2(A), FUNC3(LCTRL), FUNC0(P), END);
      }
      return FUNC1(FUNC3(P), END);
    case MACRO_OSX_COPY:
      if (record->event.pressed) {
        return FUNC1(FUNC0(LGUI), FUNC0(C), END);
      }
      return FUNC1(FUNC3(C), FUNC3(LGUI), END);
    case MACRO_OSX_PASTE:
      if (record->event.pressed) {
        return FUNC1(FUNC0(LGUI), FUNC0(V), END);
      }
      return FUNC1(FUNC3(V), FUNC3(LGUI), END);
  }
  return MACRO_NONE;
}