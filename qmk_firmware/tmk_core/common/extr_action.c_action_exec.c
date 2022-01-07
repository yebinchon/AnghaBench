
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
typedef TYPE_1__ keyrecord_t ;
typedef int keyevent_t ;


 int FAUXCLICKY_ACTION_PRESS ;
 int FAUXCLICKY_ACTION_RELEASE ;
 int IS_NOEVENT (int ) ;
 scalar_t__ IS_PRESSED (int ) ;
 scalar_t__ IS_RELEASED (int ) ;
 int ONESHOT_OTHER_KEY_PRESSED ;
 int action_tapping_process (TYPE_1__) ;
 int clear_oneshot_layer_state (int ) ;
 int clear_oneshot_mods () ;
 int debug_event (int ) ;
 int debug_record (TYPE_1__) ;
 int dprint (char*) ;
 int dprintln () ;
 int fauxclicky_check () ;
 scalar_t__ has_oneshot_layer_timed_out () ;
 scalar_t__ has_oneshot_mods_timed_out () ;
 int process_hand_swap (int *) ;
 int process_record (TYPE_1__*) ;
 int retro_tapping_counter ;

void action_exec(keyevent_t event) {
    if (!IS_NOEVENT(event)) {
        dprint("\n---- action_exec: start -----\n");
        dprint("EVENT: ");
        debug_event(event);
        dprintln();



    }
    keyrecord_t record = {.event = event};
    action_tapping_process(record);
}
