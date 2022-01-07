
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* status; } ;
typedef TYPE_1__ TS_STATUS_INFO ;
typedef int ASN1_INTEGER ;



const ASN1_INTEGER *TS_STATUS_INFO_get0_status(const TS_STATUS_INFO *a)
{
    return a->status;
}
