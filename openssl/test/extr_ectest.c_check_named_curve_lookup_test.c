
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nid; } ;
typedef int EC_GROUP ;
typedef int ECPARAMETERS ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int ECPARAMETERS_free (int *) ;
 int EC_GROUP_check_named_curve (int *,int ,int *) ;
 int EC_GROUP_cmp (int *,int *,int *) ;
 int EC_GROUP_free (int *) ;
 int * EC_GROUP_get_ecparameters (int *,int *) ;
 int * EC_GROUP_new_by_curve_name (int) ;
 int * EC_GROUP_new_from_ecparameters (int *) ;
 int TEST_int_eq (int ,int ) ;
 int TEST_int_gt (int,int ) ;
 int TEST_ptr (int *) ;
 TYPE_1__* curves ;

__attribute__((used)) static int check_named_curve_lookup_test(int id)
{
    int ret = 0, nid, rv = 0;
    EC_GROUP *g = ((void*)0) , *ga = ((void*)0);
    ECPARAMETERS *p = ((void*)0), *pa = ((void*)0);
    BN_CTX *ctx = ((void*)0);


    nid = curves[id].nid;
    if (!TEST_ptr(ctx = BN_CTX_new())
        || !TEST_ptr(g = EC_GROUP_new_by_curve_name(nid))
        || !TEST_ptr(p = EC_GROUP_get_ecparameters(g, ((void*)0))))
        goto err;


    EC_GROUP_free(g);
    if (!TEST_ptr(g = EC_GROUP_new_from_ecparameters(p)))
        goto err;

    if (!TEST_int_gt(rv = EC_GROUP_check_named_curve(g, 0, ((void*)0)), 0))
        goto err;
    if (rv != nid) {
        if (!TEST_ptr(ga = EC_GROUP_new_by_curve_name(rv))
                || !TEST_ptr(pa = EC_GROUP_get_ecparameters(ga, ((void*)0))))
            goto err;


        EC_GROUP_free(ga);
        if (!TEST_ptr(ga = EC_GROUP_new_from_ecparameters(pa))
                || !TEST_int_eq(EC_GROUP_cmp(g, ga, ctx), 0))
            goto err;
    }

    ret = 1;

 err:
    EC_GROUP_free(g);
    EC_GROUP_free(ga);
    ECPARAMETERS_free(p);
    ECPARAMETERS_free(pa);
    BN_CTX_free(ctx);

    return ret;
}
