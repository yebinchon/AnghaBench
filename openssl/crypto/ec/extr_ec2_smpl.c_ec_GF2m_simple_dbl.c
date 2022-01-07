
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;


 int ec_GF2m_simple_add (int const*,int *,int const*,int const*,int *) ;

int ec_GF2m_simple_dbl(const EC_GROUP *group, EC_POINT *r, const EC_POINT *a,
                       BN_CTX *ctx)
{
    return ec_GF2m_simple_add(group, r, a, a, ctx);
}
