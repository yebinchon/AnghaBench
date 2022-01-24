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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KC_DOWN ; 
 int /*<<< orphan*/  KC_LEFT ; 
 int /*<<< orphan*/  KC_RGHT ; 
 int /*<<< orphan*/  KC_UP ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 float clicky_rand ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ muse_mode ; 
 int /*<<< orphan*/  muse_offset ; 
 int muse_tempo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(bool clockwise) {
  if (FUNC3()) {
    if (FUNC0(_RAISE)) {
      if (clockwise) {
        clicky_rand += 0.5f;
      } else {
        clicky_rand -= 0.5f;
      }
    } else {
      if (clockwise) {
        FUNC2();
      } else {
        FUNC1();
      }
    }
  } else if (muse_mode) {
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
    if (FUNC0(_RAISE)) {
      if (clockwise) {
        FUNC4(KC_RGHT);
        FUNC5(KC_RGHT);
      } else {
        FUNC4(KC_LEFT);
        FUNC5(KC_LEFT);
      }
    } else {
      if (clockwise) {
        FUNC4(KC_DOWN);
        FUNC5(KC_DOWN);
      } else {
        FUNC4(KC_UP);
        FUNC5(KC_UP);
      }
    }
  }
}