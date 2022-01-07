
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_METHOD ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 scalar_t__ BN_nist_mod_func (int const*) ;
 int * EC_GFp_mont_method () ;
 int * EC_GFp_nist_method () ;
 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new_ex (int ,int const*) ;
 int EC_GROUP_set_curve (int *,int const*,int const*,int const*,int *) ;
 int bn_get_lib_ctx (int *) ;

EC_GROUP *EC_GROUP_new_curve_GFp(const BIGNUM *p, const BIGNUM *a,
                                 const BIGNUM *b, BN_CTX *ctx)
{
    const EC_METHOD *meth;
    EC_GROUP *ret;
    if (BN_nist_mod_func(p))
        meth = EC_GFp_nist_method();
    else
        meth = EC_GFp_mont_method();


    ret = EC_GROUP_new_ex(bn_get_lib_ctx(ctx), meth);
    if (ret == ((void*)0))
        return ((void*)0);

    if (!EC_GROUP_set_curve(ret, p, a, b, ctx)) {
        EC_GROUP_free(ret);
        return ((void*)0);
    }

    return ret;
}
