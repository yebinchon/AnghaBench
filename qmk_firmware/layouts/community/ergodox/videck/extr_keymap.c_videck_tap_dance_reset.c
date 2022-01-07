
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kc2; int (* trigger ) (int ) ;int kc1; } ;
typedef TYPE_1__ videck_tap_dance_tuple_t ;
struct TYPE_5__ {int count; } ;
typedef TYPE_2__ qk_tap_dance_state_t ;


 int stub1 (int ) ;
 int unregister_code16 (int ) ;

__attribute__((used)) static void videck_tap_dance_reset (qk_tap_dance_state_t *state, void *user_data) {
  videck_tap_dance_tuple_t *const tuple = (videck_tap_dance_tuple_t *)user_data;

  if (state->count == 1) {
    unregister_code16 (tuple->kc1);
  } else if (state->count == 2) {
    unregister_code16 (tuple->kc2);
    tuple->trigger(tuple->kc2);
  }
}
