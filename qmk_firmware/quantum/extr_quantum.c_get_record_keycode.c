
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ keyrecord_t ;


 int get_event_keycode (int ) ;

uint16_t get_record_keycode(keyrecord_t *record) { return get_event_keycode(record->event); }
