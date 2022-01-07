
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; TYPE_1__* ameth; } ;
struct TYPE_7__ {int (* param_cmp ) (TYPE_2__ const*,TYPE_2__ const*) ;} ;
typedef TYPE_2__ EVP_PKEY ;


 int stub1 (TYPE_2__ const*,TYPE_2__ const*) ;

int EVP_PKEY_cmp_parameters(const EVP_PKEY *a, const EVP_PKEY *b)
{
    if (a->type != b->type)
        return -1;
    if (a->ameth && a->ameth->param_cmp)
        return a->ameth->param_cmp(a, b);
    return -2;
}
