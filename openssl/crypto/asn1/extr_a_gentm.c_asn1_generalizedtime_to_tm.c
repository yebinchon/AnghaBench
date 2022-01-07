
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tm {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ ASN1_GENERALIZEDTIME ;


 scalar_t__ V_ASN1_GENERALIZEDTIME ;
 int asn1_time_to_tm (struct tm*,TYPE_1__ const*) ;

int asn1_generalizedtime_to_tm(struct tm *tm, const ASN1_GENERALIZEDTIME *d)
{

    if (d->type != V_ASN1_GENERALIZEDTIME)
        return 0;
    return asn1_time_to_tm(tm, d);
}
