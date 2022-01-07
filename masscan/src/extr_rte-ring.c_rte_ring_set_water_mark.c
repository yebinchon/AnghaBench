
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int size; unsigned int watermark; } ;
struct rte_ring {TYPE_1__ prod; } ;


 int EINVAL ;

int
rte_ring_set_water_mark(struct rte_ring *r, unsigned count)
{
    if (count >= r->prod.size)
        return -EINVAL;


    if (count == 0)
        count = r->prod.size;

    r->prod.watermark = count;
    return 0;
}
