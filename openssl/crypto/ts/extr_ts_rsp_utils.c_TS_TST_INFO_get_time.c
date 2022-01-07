
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* time; } ;
typedef TYPE_1__ TS_TST_INFO ;
typedef int ASN1_GENERALIZEDTIME ;



const ASN1_GENERALIZEDTIME *TS_TST_INFO_get_time(const TS_TST_INFO *a)
{
    return a->time;
}
