
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ordering; } ;
typedef TYPE_1__ TS_TST_INFO ;



int TS_TST_INFO_get_ordering(const TS_TST_INFO *a)
{
    return a->ordering ? 1 : 0;
}
