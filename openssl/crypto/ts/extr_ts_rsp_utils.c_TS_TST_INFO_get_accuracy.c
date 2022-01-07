
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * accuracy; } ;
typedef TYPE_1__ TS_TST_INFO ;
typedef int TS_ACCURACY ;



TS_ACCURACY *TS_TST_INFO_get_accuracy(TS_TST_INFO *a)
{
    return a->accuracy;
}
