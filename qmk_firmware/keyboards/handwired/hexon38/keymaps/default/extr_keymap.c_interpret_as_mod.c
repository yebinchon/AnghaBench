
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* up; TYPE_2__* down; } ;
typedef TYPE_1__ pending_pair_t ;
struct TYPE_5__ {void* keycode; } ;
typedef TYPE_2__ pending_key_t ;


 void* get_mod_kc (void*) ;

void interpret_as_mod(pending_pair_t *p) {

    pending_key_t *k;
    k = p->down;
    if (k != ((void*)0)) {
        k->keycode = get_mod_kc(k->keycode);
    }
    k = p->up;
    if (k != ((void*)0)) {
        k->keycode = get_mod_kc(k->keycode);
    }
}
