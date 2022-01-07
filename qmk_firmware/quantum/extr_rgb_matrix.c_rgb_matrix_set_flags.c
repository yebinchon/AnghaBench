
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int led_flags_t ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__ rgb_effect_params ;

void rgb_matrix_set_flags(led_flags_t flags) { rgb_effect_params.flags = flags; }
