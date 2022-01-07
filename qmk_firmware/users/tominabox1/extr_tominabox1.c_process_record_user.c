
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int row; int col; } ;
struct TYPE_6__ {scalar_t__ pressed; TYPE_1__ key; } ;
struct TYPE_7__ {TYPE_2__ event; } ;
typedef TYPE_3__ keyrecord_t ;




 int SEND_STRING (char*) ;
 int oled_on () ;
 int oled_timer ;
 int timer_read () ;
 int uprintf (char*,int,int ,int ,scalar_t__) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {




    if (record->event.pressed) {




    switch (keycode) {
            case 129:
                if (record->event.pressed) {
                    SEND_STRING(":b:");
                } else {}
                break;
            case 128:
                if (record->event.pressed) {
                    SEND_STRING("BEPIS");
                } else {}
                break;
        }
    }
    return 1;

}
