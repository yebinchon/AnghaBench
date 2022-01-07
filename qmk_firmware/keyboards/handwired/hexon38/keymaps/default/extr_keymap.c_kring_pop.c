
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ count; int ifirst; TYPE_1__* head; } ;
typedef TYPE_2__ kring_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int RINGSIZE ;

void kring_pop(kring_t *ring) {
    if (ring->count > 0) {
        ring->ifirst += 1;
        ring->ifirst %= RINGSIZE;
        ring->head = ring->head->next;
        ring->count -= 1;
    }
}
