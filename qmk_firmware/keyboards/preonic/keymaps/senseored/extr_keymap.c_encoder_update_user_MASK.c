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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KC_PGDN ; 
 int /*<<< orphan*/  KC_PGUP ; 
 int /*<<< orphan*/  _RAISE ; 
 scalar_t__ muse_mode ; 
 int /*<<< orphan*/  muse_offset ; 
 int muse_tempo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t index, bool clockwise) {
  if (muse_mode) {
    if (FUNC0(_RAISE)) {
      if (clockwise) {
        muse_offset++;
      } else {
        muse_offset--;
      }
    } else {
      if (clockwise) {
        muse_tempo+=1;
      } else {
        muse_tempo-=1;
      }
    }
  } else {
    if (clockwise) {
      FUNC1(KC_PGDN);
      FUNC2(KC_PGDN);
    } else {
      FUNC1(KC_PGUP);
      FUNC2(KC_PGUP);
    }
  }
}