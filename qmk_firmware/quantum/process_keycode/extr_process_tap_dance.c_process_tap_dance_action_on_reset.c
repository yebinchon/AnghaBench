
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int weak_mods; int oneshot_mods; } ;
struct TYPE_5__ {int on_reset; } ;
struct TYPE_6__ {TYPE_4__ state; TYPE_1__ fn; int user_data; } ;
typedef TYPE_2__ qk_tap_dance_action_t ;


 int _process_tap_dance_action_fn (TYPE_4__*,int ,int ) ;
 int del_mods (int ) ;
 int del_weak_mods (int ) ;
 int send_keyboard_report () ;

__attribute__((used)) static inline void process_tap_dance_action_on_reset(qk_tap_dance_action_t *action) {
    _process_tap_dance_action_fn(&action->state, action->user_data, action->fn.on_reset);
    del_mods(action->state.oneshot_mods);
    del_weak_mods(action->state.weak_mods);
    send_keyboard_report();
}
