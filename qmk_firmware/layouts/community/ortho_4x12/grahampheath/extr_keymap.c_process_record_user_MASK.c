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
#define  ABOVE 151 
#define  BUG 150 
#define  CLAP 149 
#define  CONFUSED 148 
#define  CRY 147 
#define  ELIP 146 
#define  FLIP 145 
#define  FNGLEFT 144 
#define  FNGRIGHT 143 
#define  FROWN 142 
#define  GRIN 141 
#define  HEART 140 
#define  JOY 139 
#define  LLAP 138 
#define  ROFL 137 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  SHIT 136 
#define  SHRUG 135 
#define  SING 134 
#define  THANKS 133 
#define  THINK 132 
#define  THMBDN 131 
#define  THMBUP 130 
#define  TOUNGE 129 
#define  WINK 128 

bool FUNC1(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case ABOVE:
      if (record->event.pressed) {
        FUNC0("&above; ");
      }
      return false;
      break;
    case BUG:
      if (record->event.pressed) {
        FUNC0("&bug;");
      }
      return false;
      break;
    case CONFUSED:
      if (record->event.pressed) {
        FUNC0(":-\\");
      }
      return false;
      break;
    case CRY:
      if (record->event.pressed) {
        FUNC0(":'-( ");
      }
      return false;
      break;
    case CLAP:
      if (record->event.pressed) {
        FUNC0("&clap; ");
      }
      return false;
      break;
    case ELIP:
      if (record->event.pressed) {
        FUNC0("...");
      }
      return false;
      break;
    case FLIP:
      if (record->event.pressed) {
        FUNC0("&fliptable;");
      }
      return false;
      break;
    case FNGLEFT:
      if (record->event.pressed) {
        FUNC0("&fingerleft; ");
      }
      return false;
      break;
    case FNGRIGHT:
      if (record->event.pressed) {
        FUNC0("&fingerright; ");
      }
      return false;
      break;
    case FROWN:
      if (record->event.pressed) {
        FUNC0(":-( ");
      }
      return false;
      break;
    case GRIN:
      if (record->event.pressed) {
        FUNC0(":-D ");
      }
      return false;
      break;
    case HEART:
      if (record->event.pressed) {
        FUNC0("<3 ");
      }
      return false;
      break;
    case JOY:
      if (record->event.pressed) {
        FUNC0(":-) ");
      }
      return false;
      break;
    case LLAP:
      if (record->event.pressed) {
        FUNC0("&llap; ");
      }
      return false;
      break;
    case ROFL:
      if (record->event.pressed) {
        FUNC0("&rofl; ");
      }
      return false;
      break;
    case SHIT:
      if (record->event.pressed) {
        FUNC0("&shit; ");
      }
      return false;
      break;
    case SING:
      if (record->event.pressed) {
        FUNC0("_sing_");
      }
      return false;
      break;
    case SHRUG:
      if (record->event.pressed) {
        FUNC0("&shrug; ");
      }
      return false;
      break;
    case THANKS:
      if (record->event.pressed) {
        FUNC0("&thanks;");
      }
      return false;
      break;
    case THINK:
      if (record->event.pressed) {
        FUNC0("_think_");
      }
      return false;
      break;
    case THMBDN:
      if (record->event.pressed) {
        FUNC0("&thumbdown; ");
      }
      return false;
      break;
    case THMBUP:
      if (record->event.pressed) {
        FUNC0("&thumbup; ");
      }
      return false;
      break;
    case TOUNGE:
      if (record->event.pressed) {
        FUNC0(":-P ");
      }
      return false;
      break;
    case WINK:
      if (record->event.pressed) {
        FUNC0(";-) ");
      }
      return false;
      break;

  }
  return true;
}