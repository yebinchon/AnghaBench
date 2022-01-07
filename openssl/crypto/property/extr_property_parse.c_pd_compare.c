
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name_idx; } ;
typedef TYPE_1__ PROPERTY_DEFINITION ;



__attribute__((used)) static int pd_compare(const PROPERTY_DEFINITION *const *p1,
                      const PROPERTY_DEFINITION *const *p2)
{
    const PROPERTY_DEFINITION *pd1 = *p1;
    const PROPERTY_DEFINITION *pd2 = *p2;

    if (pd1->name_idx < pd2->name_idx)
        return -1;
    if (pd1->name_idx > pd2->name_idx)
        return 1;
    return 0;
}
