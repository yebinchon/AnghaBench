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
#define  CLMK 133 
#define  KC_CAPS 132 
 int /*<<< orphan*/  LESC ; 
#define  PING 131 
#define  RNBW 130 
#define  SP_DW 129 
#define  SP_UP 128 
 int /*<<< orphan*/  S_COLEMAK ; 
 int /*<<< orphan*/  S_CRUSSIAN ; 
 int /*<<< orphan*/  S_ENGLISH ; 
 int /*<<< orphan*/  S_QRUSSIAN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _CM ; 
 int /*<<< orphan*/  l_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int rgb ; 
 int speed ; 
 int sstate ; 
 int /*<<< orphan*/  FUNC3 () ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {
  if(keycode != FUNC0(LESC))
    sstate = true;
  switch (keycode) {
    case SP_UP:
      if (speed>25)
        speed -= 25;
      break;
    case SP_DW:
      if (speed < 1000)
        speed += 25;
      break;
    case RNBW:
      if(record->event.pressed) {
        rgb = rgb == 0 ? 1 : 0;
        FUNC3();
      }
      break;
    case PING:
      if(record->event.pressed) {
        rgb = rgb == 0 ? 2 : 0;
        FUNC3();
      }
      break;
    case CLMK:
      if(record->event.pressed) {
        if (l_state == S_COLEMAK) {
          FUNC1(_CM);
          l_state = S_ENGLISH;
        }
        else if (l_state == S_ENGLISH) {
          FUNC2(_CM);
          l_state = S_COLEMAK;
        }
        else if (l_state == S_CRUSSIAN) { l_state = S_QRUSSIAN; }
        else if (l_state == S_QRUSSIAN) { l_state = S_CRUSSIAN; }
      }
      FUNC3();
      break;
    case KC_CAPS:
      if(record->event.pressed) {
        if (l_state == S_ENGLISH) l_state = S_QRUSSIAN;
        else if (l_state == S_QRUSSIAN) l_state = S_ENGLISH;
        else if (l_state == S_COLEMAK) {
          FUNC1(_CM);
          l_state = S_CRUSSIAN;
        }
        else if (l_state == S_CRUSSIAN) {
          FUNC2(_CM);
          l_state = S_COLEMAK;
        }
        FUNC3();
      }
      break;
  }
  return true;
}