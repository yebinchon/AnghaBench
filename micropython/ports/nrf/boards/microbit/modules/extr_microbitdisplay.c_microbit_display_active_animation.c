
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ASYNC_MODE_ANIMATION ;
 scalar_t__ async_mode ;

bool microbit_display_active_animation(void) {
    return async_mode == ASYNC_MODE_ANIMATION;
}
