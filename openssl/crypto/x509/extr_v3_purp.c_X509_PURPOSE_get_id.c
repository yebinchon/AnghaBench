
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int purpose; } ;
typedef TYPE_1__ X509_PURPOSE ;



int X509_PURPOSE_get_id(const X509_PURPOSE *xp)
{
    return xp->purpose;
}
