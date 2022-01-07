
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {size_t col; size_t row; } ;
struct TYPE_6__ {scalar_t__ pressed; TYPE_1__ key; } ;
struct TYPE_7__ {TYPE_2__ event; } ;
typedef TYPE_3__ keyrecord_t ;


 int MAX_SWITCH_NAME_LENGTH ;
 int SEND_STRING (char*) ;
 int send_string (char*) ;
 int switch_name (int ,char*) ;
 int ** switches ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  uint8_t col = record->event.key.col;
  uint8_t row = record->event.key.row;

  if (record->event.pressed) {
    char name[MAX_SWITCH_NAME_LENGTH];
    switch_name(switches[row][col], name);
    send_string(name);
    SEND_STRING("\n");
  }
  return 0;
}
