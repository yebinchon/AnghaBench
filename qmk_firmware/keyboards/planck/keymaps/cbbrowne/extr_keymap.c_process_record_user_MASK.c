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
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_AMPR ; 
 int /*<<< orphan*/  KC_ASTR ; 
 int /*<<< orphan*/  KC_ENT ; 
 int /*<<< orphan*/  KC_EQL ; 
 int /*<<< orphan*/  KC_EXLM ; 
 int /*<<< orphan*/  KC_LABK ; 
 int /*<<< orphan*/  KC_LEFT ; 
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_MINS ; 
 int /*<<< orphan*/  KC_PIPE ; 
 int /*<<< orphan*/  KC_PLUS ; 
 int /*<<< orphan*/  KC_RABK ; 
 int /*<<< orphan*/  KC_RGHT ; 
 int /*<<< orphan*/  KC_SLSH ; 
 int /*<<< orphan*/  KC_UP ; 
#define  MY_ABVE 138 
#define  MY_BELW 137 
#define  MY_DAMP 136 
#define  MY_DEQL 135 
#define  MY_DPIP 134 
#define  MY_LTGT 133 
#define  MY_MEQL 132 
#define  MY_NEQL 131 
#define  MY_PEQL 130 
#define  MY_SEQL 129 
#define  MY_TERM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC3(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case MY_BELW:
      if (record->event.pressed) {
        FUNC2(KC_LGUI, KC_RGHT);
        FUNC0(KC_ENT);
      }

      return false;

    case MY_ABVE:
      if (record->event.pressed) {
        FUNC2(KC_LGUI, KC_LEFT);
        FUNC0(KC_ENT);
        FUNC0(KC_UP);
      }

      return false;

    case MY_TERM:
      if (record->event.pressed) {
        FUNC1(KC_LGUI, KC_LSFT, KC_ENT);
      }

      return false;

    case MY_DEQL: // /=
      if (record->event.pressed) {
        FUNC0(KC_SLSH);
        FUNC0(KC_EQL);
      }

      return false;

    case MY_MEQL: // *=
      if (record->event.pressed) {
        FUNC2(KC_LSFT, KC_ASTR);
        FUNC0(KC_EQL);
      }

      return false;

    case MY_SEQL: // -=
      if (record->event.pressed) {
        FUNC0(KC_MINS);
        FUNC0(KC_EQL);
      }

      return false;

    case MY_PEQL: // +=
      if (record->event.pressed) {
        FUNC2(KC_LSFT, KC_PLUS);
        FUNC0(KC_EQL);
      }

      return false;

    case MY_NEQL: // !=
      if (record->event.pressed) {
        FUNC2(KC_LSFT, KC_EXLM);
        FUNC0(KC_EQL);
      }

      return false;

    case MY_LTGT: // <>
      if (record->event.pressed) {
        FUNC2(KC_LSFT, KC_LABK);
        FUNC2(KC_LSFT, KC_RABK);
      }

      return false;

    case MY_DPIP: // ||
      if (record->event.pressed) {
        FUNC2(KC_LSFT, KC_PIPE);
        FUNC2(KC_LSFT, KC_PIPE);
      }

      return false;

    case MY_DAMP: // &&
      if (record->event.pressed) {
        FUNC2(KC_LSFT, KC_AMPR);
        FUNC2(KC_LSFT, KC_AMPR);
      }

      return false;
  }

  return true;
}