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
typedef  int /*<<< orphan*/  macro_t ;
typedef  int /*<<< orphan*/  keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  KC_0 ; 
 int /*<<< orphan*/  KC_1 ; 
 int /*<<< orphan*/  KC_2 ; 
 int /*<<< orphan*/  KC_3 ; 
 int /*<<< orphan*/  KC_4 ; 
 int /*<<< orphan*/  KC_5 ; 
 int /*<<< orphan*/  KC_6 ; 
 int /*<<< orphan*/  KC_7 ; 
 int /*<<< orphan*/  KC_8 ; 
 int /*<<< orphan*/  KC_B ; 
 int /*<<< orphan*/  KC_C ; 
 int /*<<< orphan*/  KC_ENT ; 
 int /*<<< orphan*/  KC_ESC ; 
 int /*<<< orphan*/  KC_L ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_N ; 
 int /*<<< orphan*/  KC_P ; 
 int /*<<< orphan*/  KC_Q ; 
 int /*<<< orphan*/  KC_SCLN ; 
 int /*<<< orphan*/  KC_W ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

const macro_t *FUNC4(keyrecord_t *record, uint8_t id, uint8_t opt)
{
      switch(id) {
        case 0:
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), FUNC2(KC_0), END );
          break;
        case 1:
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), FUNC2(KC_1), END );
          break;
        case 2:
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), FUNC2(KC_2), END );
          break;
        case 3:
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), FUNC2(KC_3), END );
          break;
        case 4:
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), FUNC2(KC_4), END );
          break;
        case 5:
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), FUNC2(KC_5), END );
          break;
        case 6:
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), FUNC2(KC_6), END );
          break;
        case 7:
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), FUNC2(KC_7), END );
          break;
        case 8:
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), FUNC2(KC_8), END );
          break;
        case 9:
          // tmux last window
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), FUNC2(KC_L), END );
          break;
          // tmux next window
        case 10:
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), FUNC2(KC_N), END );
          break;
          // tmux previous window
        case 11:
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), FUNC2(KC_P), END );
          break;
          // tmux new window
        case 12:
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), FUNC2(KC_C), END );
          break;
        case 13:
          // vi save document
          return FUNC1( FUNC2(KC_ESC), FUNC0(KC_LSFT), FUNC2(KC_SCLN), FUNC3(KC_LSFT), FUNC2(KC_W), FUNC2(KC_ENT), END );
          break;
        case 14:
          // vi quit
          return FUNC1( FUNC2(KC_ESC), FUNC0(KC_LSFT), FUNC2(KC_SCLN), FUNC3(KC_LSFT), FUNC2(KC_Q), FUNC2(KC_ENT), END );
          break;
          // tmux press ctrl-b
        case 15:
          return FUNC1( FUNC0(KC_LCTL), FUNC2(KC_B), FUNC3(KC_LCTL), END );
          break;
      }
    return MACRO_NONE;
}