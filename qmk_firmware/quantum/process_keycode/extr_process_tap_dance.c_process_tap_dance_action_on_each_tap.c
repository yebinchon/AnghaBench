
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int on_each_tap; } ;
struct TYPE_5__ {TYPE_1__ fn; int user_data; int state; } ;
typedef TYPE_2__ qk_tap_dance_action_t ;


 int _process_tap_dance_action_fn (int *,int ,int ) ;

__attribute__((used)) static inline void process_tap_dance_action_on_each_tap(qk_tap_dance_action_t *action) { _process_tap_dance_action_fn(&action->state, action->user_data, action->fn.on_each_tap); }
