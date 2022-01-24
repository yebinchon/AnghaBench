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
#define  CABBAGE 143 
#define  COLEMAK 142 
#define  COMMENTHEAD 141 
#define  DISNEY 140 
#define  DOOM 139 
#define  GCTOGG 138 
#define  LENNY 137 
#define  LOWER 136 
#define  MARIO 135 
#define  MARIOE 134 
#define  MCTOGG 133 
#define  NUMBERONE 132 
#define  OLDSPICE 131 
#define  OVERWATCH 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  RAISE 129 
#define  RICKANDMORT 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _GAME ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _MUSIC ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cabbage ; 
 int /*<<< orphan*/  disney ; 
 int /*<<< orphan*/  doom ; 
 int isGame ; 
 int isMusic ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mario ; 
 int /*<<< orphan*/  marioe ; 
 int /*<<< orphan*/  numberone ; 
 int /*<<< orphan*/  oldspice ; 
 int /*<<< orphan*/  overwatch ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC8(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case COLEMAK:
      if (record->event.pressed) {
        FUNC6(_COLEMAK);
        #ifdef BACKLIGHT_ENABLE
		  backlight_set(0);
        #endif
      }
      return false;
      break;
	case GCTOGG:
      if (record->event.pressed) {
		  if (isGame) {
              if (isMusic)
                  FUNC5(_MUSIC);
              else
                  FUNC5(_COLEMAK);
              isGame = false;
          } else {
              FUNC5(_GAME);
              isGame = true;
          }
      }
      return false;
      break;
    case MCTOGG:
        if (record->event.pressed) {
            if (isMusic) {
                if (isGame)
                    FUNC5(_GAME);
                else
                    FUNC5(_COLEMAK);
                isMusic = false;
            } else {
                FUNC5(_MUSIC);
                isMusic = true;
            }
        }
        return false;
        break;
    case LOWER:
      if (record->event.pressed) {
        FUNC4(_LOWER);
        FUNC7(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC3(_LOWER);
        FUNC7(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        FUNC4(_RAISE);
        FUNC7(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC3(_RAISE);
        FUNC7(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case LENNY:
    	if (record->event.pressed) {
    		FUNC1("()");
    	}
    	return false; break;
    case COMMENTHEAD:
    	if (record->event.pressed) {
    		FUNC1("// ---------------------------------------------------------------");
    	}
    	return false; break;
    case RICKANDMORT:
    	if (record->event.pressed) {
    		FUNC1("// ***************************************************************");
    	}
    	return false; break;
    case MARIO:
        if(record->event.pressed) {
          #ifdef AUDIO_ENABLE
            PLAY_SONG(mario);
          #endif
        }
        return false; break;
      case MARIOE:
          if(record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(marioe);
            #endif
          }
          return false; break;
      case OVERWATCH:
          if(record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(overwatch);
            #endif
          }
          return false; break;
      case DOOM:
          if(record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(doom);
            #endif
          }
          return false; break;
      case DISNEY:
          if(record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(disney);
            #endif
          }
          return false; break;
      case NUMBERONE:
          if(record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(numberone);
            #endif
          }
          return false; break;
      case CABBAGE:
          if(record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(cabbage);
            #endif
          }
          return false; break;
      case OLDSPICE:
          if(record->event.pressed) {
            #ifdef AUDIO_ENABLE
              PLAY_SONG(oldspice);
            #endif
          }
          return false; break;
  }
  return true;
}