
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int purpose; } ;
typedef TYPE_1__ X509_PURPOSE ;



__attribute__((used)) static int xp_cmp(const X509_PURPOSE *const *a, const X509_PURPOSE *const *b)
{
    return (*a)->purpose - (*b)->purpose;
}
