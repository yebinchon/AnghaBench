
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int trust; } ;
typedef TYPE_1__ X509_TRUST ;



int X509_TRUST_get_trust(const X509_TRUST *xp)
{
    return xp->trust;
}
