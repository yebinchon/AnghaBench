
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; } ;
typedef TYPE_1__ TS_TST_INFO ;


 long ASN1_INTEGER_get (int ) ;

long TS_TST_INFO_get_version(const TS_TST_INFO *a)
{
    return ASN1_INTEGER_get(a->version);
}
