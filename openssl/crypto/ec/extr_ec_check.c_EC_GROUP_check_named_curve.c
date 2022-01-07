
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_GROUP ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int EC_F_EC_GROUP_CHECK_NAMED_CURVE ;
 int * EC_curve_nid2nist (int) ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int NID_undef ;
 int ec_curve_nid_from_params (int const*,int *) ;

int EC_GROUP_check_named_curve(const EC_GROUP *group, int nist_only,
                               BN_CTX *ctx)
{
    int nid = NID_undef;

    BN_CTX *new_ctx = ((void*)0);

    if (ctx == ((void*)0)) {
        ctx = new_ctx = BN_CTX_new();
        if (ctx == ((void*)0)) {
            ECerr(EC_F_EC_GROUP_CHECK_NAMED_CURVE, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }


    nid = ec_curve_nid_from_params(group, ctx);
    if (nid > 0 && nist_only && EC_curve_nid2nist(nid) == ((void*)0))
        nid = NID_undef;


 err:
    BN_CTX_free(ctx);

    return nid;
}
