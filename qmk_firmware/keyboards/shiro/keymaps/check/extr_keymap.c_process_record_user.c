
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int SEND_STRING (char*) ;
bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case 142: if(record->event.pressed){ SEND_STRING("A1"); } break;
    case 141: if(record->event.pressed){ SEND_STRING("A2"); } break;
    case 140: if(record->event.pressed){ SEND_STRING("A3"); } break;
    case 139: if(record->event.pressed){ SEND_STRING("B1"); } break;
    case 138: if(record->event.pressed){ SEND_STRING("B2"); } break;
    case 137: if(record->event.pressed){ SEND_STRING("B3"); } break;
    case 136: if(record->event.pressed){ SEND_STRING("C1"); } break;
    case 135: if(record->event.pressed){ SEND_STRING("C2"); } break;
    case 134: if(record->event.pressed){ SEND_STRING("C3"); } break;
    case 133: if(record->event.pressed){ SEND_STRING("D1"); } break;
    case 132: if(record->event.pressed){ SEND_STRING("D2"); } break;
    case 131: if(record->event.pressed){ SEND_STRING("D3"); } break;
    case 130: if(record->event.pressed){ SEND_STRING("E1"); } break;
    case 129: if(record->event.pressed){ SEND_STRING("E2"); } break;
    case 128: if(record->event.pressed){ SEND_STRING("E3"); } break;
  }
  return 1;
}
