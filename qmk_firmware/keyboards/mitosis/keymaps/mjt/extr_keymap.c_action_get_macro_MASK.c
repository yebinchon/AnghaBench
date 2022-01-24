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
 int const APP ; 
 int /*<<< orphan*/  END ; 
 int const ESC ; 
#define  ESCM 130 
 int /*<<< orphan*/  LONGPRESS_DELAY ; 
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int const MNXT ; 
 int const MPLY ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
#define  VOLD 129 
#define  VOLU 128 
 int /*<<< orphan*/  key_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

const macro_t *FUNC4(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  // MACRODOWN only works in this function
  switch(id) {

  //switch multiplexing for media, short tap for volume up, long press for play/pause
  case VOLU:
    if (record->event.pressed) {
      key_timer = FUNC3();           // if the key is being pressed, we start the timer.
    } else {         // this means the key was just released, so we can figure out how long it was pressed for (tap or "held down").
      if (FUNC2(key_timer) > LONGPRESS_DELAY) {           // LONGPRESS_DELAY being 150ms, the threshhold we pick for counting something as a tap.
        return FUNC0(FUNC1(MPLY), END);
      } else {
        return FUNC0(FUNC1(VOLU), END);
      }
    }
    break;

  //switch multiplexing for media, short tap for volume down, long press for next track
  case VOLD:
    if (record->event.pressed) {
      key_timer = FUNC3();
    } else {
      if (FUNC2(key_timer) > LONGPRESS_DELAY) {
        return FUNC0(FUNC1(MNXT), END);
      } else {
        return FUNC0(FUNC1(VOLD), END);
      }
    }
    break;

  //switch multiplexing for escape, short tap for escape, long press for context menu
  case ESCM:
    if (record->event.pressed) {
      key_timer = FUNC3();
    } else {
      if (FUNC2(key_timer) > LONGPRESS_DELAY) {
        return FUNC0(FUNC1(APP), END);
      } else {
        return FUNC0(FUNC1(ESC), END);
      }
    }
    break;
  }
  return MACRO_NONE;
}