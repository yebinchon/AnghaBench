
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* up; TYPE_2__* down; } ;
typedef TYPE_1__ pending_pair_t ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_2__ pending_key_t ;


 int is_down (TYPE_2__*) ;
 scalar_t__ is_up (TYPE_2__*) ;
 scalar_t__ keys_match (TYPE_2__*,TYPE_2__*) ;

bool is_downup_pair(pending_key_t *k, pending_pair_t *p) {

    if (!is_down(k)) {
        return 0;
    }

    pending_key_t *next = k->next;
    while (next != ((void*)0)) {
        if (keys_match(k, next) && is_up(next)) {

            if (p != ((void*)0)) {
                p->down = k;
                p->up = next;
            }
            return 1;
        }
        next = next->next;
    }

    return 0;
}
