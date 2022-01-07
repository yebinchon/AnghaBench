
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ec; } ;
struct TYPE_6__ {TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EC_GROUP ;


 scalar_t__ EC_GROUP_cmp (int const*,int const*,int *) ;
 int * EC_KEY_get0_group (int ) ;

__attribute__((used)) static int ec_cmp_parameters(const EVP_PKEY *a, const EVP_PKEY *b)
{
    const EC_GROUP *group_a = EC_KEY_get0_group(a->pkey.ec),
        *group_b = EC_KEY_get0_group(b->pkey.ec);
    if (group_a == ((void*)0) || group_b == ((void*)0))
        return -2;
    if (EC_GROUP_cmp(group_a, group_b, ((void*)0)))
        return 0;
    else
        return 1;
}
