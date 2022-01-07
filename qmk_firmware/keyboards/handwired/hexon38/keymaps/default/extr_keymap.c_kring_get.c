
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int pending_key_t ;
struct TYPE_3__ {size_t count; size_t ifirst; int * items; } ;
typedef TYPE_1__ kring_t ;


 size_t RINGSIZE ;

pending_key_t* kring_get(kring_t *ring, uint8_t i) {
    if (i >= ring->count) {
        return ((void*)0);
    }
    uint8_t j = (ring->ifirst + i) % RINGSIZE;
    return &(ring->items[j]);
}
