
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_1; int member_0; } ;
typedef int RANGES ;
typedef TYPE_1__ RANGE ;
typedef int INT ;
typedef int BOOL ;


 int ranges_add (int ,TYPE_1__) ;

__attribute__((used)) static inline BOOL ranges_additem(RANGES ranges, INT nItem)
{
    RANGE range = { nItem, nItem + 1 };

    return ranges_add(ranges, range);
}
