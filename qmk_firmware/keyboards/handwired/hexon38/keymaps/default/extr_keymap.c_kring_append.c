
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_11__ {int count; int ilast; TYPE_2__* items; TYPE_2__* head; scalar_t__ ifirst; } ;
typedef TYPE_3__ kring_t ;
struct TYPE_12__ {int tap; int event; } ;
typedef TYPE_4__ keyrecord_t ;
typedef size_t int8_t ;
struct TYPE_13__ {TYPE_2__* next; } ;
struct TYPE_9__ {int tap; int event; } ;
struct TYPE_10__ {int * next; TYPE_1__ record; int keycode; } ;


 int RINGSIZE ;
 TYPE_5__* kring_get (TYPE_3__*,int) ;

void kring_append(kring_t *ring, uint16_t keycode, keyrecord_t *record) {
    if (ring->count >= RINGSIZE) {

        return;
    }


    if (ring->count == 0) {
        ring->count += 1;
        ring->ifirst = 0;
        ring->ilast = 0;
        ring->head = &(ring->items[0]);
    }

    else {
        ring->count += 1;
        ring->ilast += 1;
        ring->ilast %= RINGSIZE;
    }


    int8_t i = ring->ilast;


    ring->items[i].keycode = keycode;
    ring->items[i].record.event = record->event;

    ring->items[i].record.tap = record->tap;

    ring->items[i].next = ((void*)0);


    if (ring->count > 1) {
        kring_get(ring, ring->count - 2)->next = &(ring->items[i]);
    }
}
