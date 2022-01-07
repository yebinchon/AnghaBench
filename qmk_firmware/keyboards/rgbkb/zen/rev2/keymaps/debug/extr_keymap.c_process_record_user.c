
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int col; int row; } ;
struct TYPE_5__ {TYPE_2__ key; scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_3__ keyrecord_t ;


 int send_string (char*) ;
 int snprintf (char*,int,char*,int,int) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    static char buf[10] = " ";

    if (record->event.pressed) {
      snprintf(buf, 10, "C%dR%d ", record->event.key.col, record->event.key.row);

      send_string(buf);
    }
    return 0;

  return 1;
}
