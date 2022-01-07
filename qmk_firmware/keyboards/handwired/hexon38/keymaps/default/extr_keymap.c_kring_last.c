
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pending_key_t ;
struct TYPE_4__ {scalar_t__ count; } ;
typedef TYPE_1__ kring_t ;


 int * kring_get (TYPE_1__*,scalar_t__) ;

pending_key_t* kring_last(kring_t *ring) {
    if (ring->count == 0) {
        return ((void*)0);
    }
    return kring_get(ring, ring->count - 1);
}
