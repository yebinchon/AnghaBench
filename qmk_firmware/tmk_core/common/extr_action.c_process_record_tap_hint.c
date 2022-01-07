
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int key; } ;
struct TYPE_11__ {TYPE_1__ event; } ;
typedef TYPE_4__ keyrecord_t ;
struct TYPE_10__ {int code; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_12__ {TYPE_3__ swap; TYPE_2__ kind; } ;
typedef TYPE_5__ action_t ;




 TYPE_5__ layer_switch_get_action (int ) ;
 int swap_hands ;
 int swap_held ;

void process_record_tap_hint(keyrecord_t *record) {
    action_t action = layer_switch_get_action(record->event.key);

    switch (action.kind.id) {
    }
}
