
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ordering; } ;
typedef TYPE_1__ TS_TST_INFO ;



int TS_TST_INFO_set_ordering(TS_TST_INFO *a, int ordering)
{
    a->ordering = ordering ? 0xFF : 0x00;
    return 1;
}
