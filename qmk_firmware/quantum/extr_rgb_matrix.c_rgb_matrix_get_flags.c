
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int led_flags_t ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__ rgb_effect_params ;

led_flags_t rgb_matrix_get_flags(void) { return rgb_effect_params.flags; }
