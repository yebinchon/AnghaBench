
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* failure_info; } ;
typedef TYPE_1__ TS_STATUS_INFO ;
typedef int ASN1_BIT_STRING ;



const ASN1_BIT_STRING *TS_STATUS_INFO_get0_failure_info(const TS_STATUS_INFO *a)
{
    return a->failure_info;
}
