#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_6__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_8__ {int level; int enable; int breathing; } ;

/* Variables and functions */
 int BACKLIGHT_LEVELS ; 
#define  BL_BRTG 131 
#define  BL_DEC 130 
#define  BL_INC 129 
#define  BL_TOGG 128 
 int MACRO00 ; 
 int MACRO15 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_5__ kb_backlight_config ; 
 int FUNC3 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

bool FUNC5(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case BL_INC:
      if (record->event.pressed) {
        kb_backlight_config.level = kb_backlight_config.level + 1;
        if(kb_backlight_config.level > BACKLIGHT_LEVELS){
          kb_backlight_config.level = BACKLIGHT_LEVELS;
        }
        FUNC0(kb_backlight_config.level);
        FUNC4();
      }
      return false;
    case BL_TOGG:
      if (record->event.pressed) {
        kb_backlight_config.enable = !kb_backlight_config.enable;
        if(kb_backlight_config.enable){
          FUNC0(kb_backlight_config.level);
        } else {
          FUNC0(0);
        }
        FUNC4();
      }
      return false;

    case BL_DEC:
      if (record->event.pressed) {
        if(kb_backlight_config.level <= 1){
          kb_backlight_config.level = 0;
        } else {
          kb_backlight_config.level = kb_backlight_config.level - 1;
        }
        FUNC0(kb_backlight_config.level);
        FUNC4();
      }
      return false;
    case BL_BRTG:
      if (record->event.pressed) {
        kb_backlight_config.breathing = !kb_backlight_config.breathing;
        FUNC1();
        FUNC4();
      }
      return false;
    default:
        break;
  }

  #ifdef DYNAMIC_KEYMAP_ENABLE
	// Handle macros
	if (record->event.pressed) {
		if ( keycode >= MACRO00 && keycode <= MACRO15 )
		{
			uint8_t id = keycode - MACRO00;
			dynamic_keymap_macro_send(id);
			return false;
		}
	}
    #endif //DYNAMIC_KEYMAP_ENABLE

  return FUNC3(keycode, record);;
}