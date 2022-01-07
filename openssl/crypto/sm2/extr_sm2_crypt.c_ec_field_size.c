
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_GROUP ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int * BN_new () ;
 int BN_num_bits (int *) ;
 int EC_GROUP_get_curve (int const*,int *,int *,int *,int *) ;

__attribute__((used)) static size_t ec_field_size(const EC_GROUP *group)
{

    BIGNUM *p = BN_new();
    BIGNUM *a = BN_new();
    BIGNUM *b = BN_new();
    size_t field_size = 0;

    if (p == ((void*)0) || a == ((void*)0) || b == ((void*)0))
       goto done;

    if (!EC_GROUP_get_curve(group, p, a, b, ((void*)0)))
        goto done;
    field_size = (BN_num_bits(p) + 7) / 8;

 done:
    BN_free(p);
    BN_free(a);
    BN_free(b);

    return field_size;
}
