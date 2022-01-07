
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int key; int pressed; } ;
struct TYPE_6__ {TYPE_5__ event; } ;
typedef TYPE_1__ keyrecord_t ;
typedef int action_t ;


 scalar_t__ IS_NOEVENT (TYPE_5__) ;
 int debug_action (int ) ;
 int default_layer_debug () ;
 int dprint (char*) ;
 int dprintln () ;
 int layer_debug () ;
 int process_action (TYPE_1__*,int ) ;
 int process_record_quantum (TYPE_1__*) ;
 int store_or_get_action (int ,int ) ;

void process_record(keyrecord_t *record) {
    if (IS_NOEVENT(record->event)) {
        return;
    }

    if (!process_record_quantum(record)) return;

    action_t action = store_or_get_action(record->event.pressed, record->event.key);
    dprint("ACTION: ");
    debug_action(action);

    dprint(" layer_state: ");
    layer_debug();
    dprint(" default_layer_state: ");
    default_layer_debug();

    dprintln();

    process_action(record, action);
}
