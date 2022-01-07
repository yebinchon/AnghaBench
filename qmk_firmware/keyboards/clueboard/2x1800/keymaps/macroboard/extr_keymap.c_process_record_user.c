
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
 int SEND_STRING (char*) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    if (record->event.pressed) {
        switch(keycode) {
            case 148:
                SEND_STRING("This is macro 01");
                return 0;
            case 147:
                SEND_STRING("This is macro 02");
                return 0;
            case 146:
                SEND_STRING("This is macro 03");
                return 0;
            case 145:
                SEND_STRING("This is macro 04");
                return 0;
            case 144:
                SEND_STRING("This is macro 05");
                return 0;
            case 143:
                SEND_STRING("This is macro 06");
                return 0;
            case 142:
                SEND_STRING("This is macro 07");
                return 0;
            case 141:
                SEND_STRING("This is macro 08");
                return 0;
            case 140:
                SEND_STRING("This is macro 09");
                return 0;
            case 139:
                SEND_STRING("This is macro 10");
                return 0;
            case 138:
                SEND_STRING("This is macro 11");
                return 0;
            case 137:
                SEND_STRING("This is macro 12");
                return 0;
            case 136:
                SEND_STRING("This is macro 13");
                return 0;
            case 135:
                SEND_STRING("This is macro 14");
                return 0;
            case 134:
                SEND_STRING("This is macro 15");
                return 0;
            case 133:
                SEND_STRING("This is macro 16");
                return 0;
            case 132:
                SEND_STRING("This is macro 17");
                return 0;
            case 131:
                SEND_STRING("This is macro 18");
                return 0;
            case 130:
                SEND_STRING("This is macro 19");
                return 0;
            case 129:
                SEND_STRING("This is macro 20");
                return 0;
            case 128:
                SEND_STRING("This is macro 21");
                return 0;
        }
    }
    return 1;
}
