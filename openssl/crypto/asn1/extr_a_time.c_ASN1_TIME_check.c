
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ ASN1_TIME ;


 int ASN1_GENERALIZEDTIME_check (TYPE_1__ const*) ;
 int ASN1_UTCTIME_check (TYPE_1__ const*) ;
 scalar_t__ V_ASN1_GENERALIZEDTIME ;
 scalar_t__ V_ASN1_UTCTIME ;

int ASN1_TIME_check(const ASN1_TIME *t)
{
    if (t->type == V_ASN1_GENERALIZEDTIME)
        return ASN1_GENERALIZEDTIME_check(t);
    else if (t->type == V_ASN1_UTCTIME)
        return ASN1_UTCTIME_check(t);
    return 0;
}
