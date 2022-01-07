
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ aux; } ;
typedef TYPE_1__ X509 ;



int X509_trusted(const X509 *x)
{
    return x->aux ? 1 : 0;
}
