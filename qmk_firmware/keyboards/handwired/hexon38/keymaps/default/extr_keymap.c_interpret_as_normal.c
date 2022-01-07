
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* up; TYPE_2__* down; } ;
typedef TYPE_1__ pending_pair_t ;
struct TYPE_5__ {int keycode; } ;
typedef TYPE_2__ pending_key_t ;



void interpret_as_normal(pending_pair_t *p) {
    pending_key_t *k;
    k = p->down;
    if (k != ((void*)0)) {
        k->keycode = k->keycode & 0xFF;
    }
    k = p->up;
    if (k != ((void*)0)) {
        k->keycode = k->keycode & 0xFF;
    }
}
