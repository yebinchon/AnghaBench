
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int tail; int mask; } ;
struct TYPE_3__ {int tail; } ;
struct rte_ring {TYPE_2__ prod; TYPE_1__ cons; } ;



__attribute__((used)) static inline int
rte_ring_full(const struct rte_ring *r)
{
    uint32_t prod_tail = r->prod.tail;
    uint32_t cons_tail = r->cons.tail;
    return (((cons_tail - prod_tail - 1) & r->prod.mask) == 0);
}
