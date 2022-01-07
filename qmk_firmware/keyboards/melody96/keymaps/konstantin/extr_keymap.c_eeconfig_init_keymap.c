
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v; int s; int h; } ;


 size_t cidx ;
 TYPE_1__** colors ;
 int rgblight_sethsv (int ,int ,int ) ;

void eeconfig_init_keymap(void) {
    rgblight_sethsv(colors[cidx]->h, colors[cidx]->s, colors[cidx]->v);
}
