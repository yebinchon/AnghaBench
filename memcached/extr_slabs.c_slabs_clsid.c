
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t const item_size_max; } ;
struct TYPE_3__ {size_t const size; } ;


 int POWER_SMALLEST ;
 unsigned int power_largest ;
 TYPE_2__ settings ;
 TYPE_1__* slabclass ;

unsigned int slabs_clsid(const size_t size) {
    int res = POWER_SMALLEST;

    if (size == 0 || size > settings.item_size_max)
        return 0;
    while (size > slabclass[res].size)
        if (res++ == power_largest)
            return power_largest;
    return res;
}
