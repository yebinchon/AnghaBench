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
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  ASC_BKT 142 
#define  ASC_CBRL 141 
#define  ASC_CBRR 140 
#define  ASC_CIRC 139 
#define  ASC_DAR 138 
#define  ASC_DQT 137 
#define  ASC_HAP 136 
#define  ASC_SAD 135 
#define  ASC_SAR 134 
#define  ASC_SQT 133 
#define  ASC_TILD 132 
#define  COLEMAKDHMK 131 
#define  COLEMAKDHMK_MAC 130 
#define  QWERTY 129 
#define  QWERTY_MAC 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  _COLEMAKDHMK ; 
 int /*<<< orphan*/  _COLEMAKDHMK_MAC ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _QWERTY_MAC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
    switch(keycode) {
      case ASC_SAR:
        FUNC0("->");
        return false;
      case ASC_DAR:
        FUNC0("=>");
        return false;
      case ASC_SQT:
        // SS_RALT(): Avoid sending dead key on software intl layouts
        FUNC0(FUNC2("'"));
        return false;
      case ASC_DQT:
        // SS_RALT(SS_LSFT()): Avoid sending dead key on software intl layouts
        FUNC0(FUNC2(FUNC1("\"")));
        return false;
      case ASC_CIRC:
        // SS_RALT(): Avoid sending dead key on software intl layouts
        FUNC0(FUNC2("^"));
        return false;
      case ASC_TILD:
        // SS_RALT(SS_LSFT()): Avoid sending dead key on software intl layouts
        FUNC0(FUNC2(FUNC1("~")));
        return false;
      case ASC_HAP:
        FUNC0(":-) ");
        return false;
      case ASC_SAD:
        FUNC0(":-( ");
        return false;
      case ASC_BKT:
        // SS_RALT(): Avoid sending dead key on software intl layouts
        FUNC0(FUNC2("`"));
        return false;
      case ASC_CBRL:
        FUNC0("{");
        return false;
      case ASC_CBRR:
        FUNC0("}");
        return false;
      case QWERTY:
        if (record->event.pressed) {
          FUNC3(_QWERTY);
        }
        return false;
        break;
      case COLEMAKDHMK:
        if (record->event.pressed) {
          FUNC3(_COLEMAKDHMK);
        }
        return false;
        break;
      case QWERTY_MAC:
        if (record->event.pressed) {
          FUNC3(_QWERTY_MAC);
        }
        return false;
        break;
      case COLEMAKDHMK_MAC:
        if (record->event.pressed) {
          FUNC3(_COLEMAKDHMK_MAC);
        }
        return false;
        break;
    }
  }
  return true;
}