
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nid; } ;
typedef int const EC_POINT ;
typedef int const EC_GROUP ;
typedef int const BN_CTX ;


 int BN_CTX_free (int const*) ;
 int const* BN_CTX_new () ;
 int EC_GROUP_free (int const*) ;
 int const* EC_GROUP_get0_generator (int const*) ;
 int const* EC_GROUP_new_by_curve_name (int) ;
 int const* EC_POINT_dup (int const*,int const*) ;
 int EC_POINT_free (int const*) ;
 int POINT_CONVERSION_COMPRESSED ;
 int POINT_CONVERSION_HYBRID ;
 int POINT_CONVERSION_UNCOMPRESSED ;
 int TEST_ptr (int const*) ;
 int TEST_true (int ) ;
 TYPE_1__* curves ;
 int ec_point_hex2point_test_helper (int const*,int const*,int ,int const*) ;

__attribute__((used)) static int ec_point_hex2point_test(int id)
{
    int ret = 0, nid;
    EC_GROUP *group = ((void*)0);
    const EC_POINT *G = ((void*)0);
    EC_POINT *P = ((void*)0);
    BN_CTX * bnctx = ((void*)0);


    nid = curves[id].nid;
    if (!TEST_ptr(bnctx = BN_CTX_new())
            || !TEST_ptr(group = EC_GROUP_new_by_curve_name(nid))
            || !TEST_ptr(G = EC_GROUP_get0_generator(group))
            || !TEST_ptr(P = EC_POINT_dup(G, group)))
        goto err;

    if (!TEST_true(ec_point_hex2point_test_helper(group, P,
                                                  POINT_CONVERSION_COMPRESSED,
                                                  bnctx))
            || !TEST_true(ec_point_hex2point_test_helper(group, ((void*)0),
                                                         POINT_CONVERSION_COMPRESSED,
                                                         bnctx))
            || !TEST_true(ec_point_hex2point_test_helper(group, P,
                                                         POINT_CONVERSION_UNCOMPRESSED,
                                                         bnctx))
            || !TEST_true(ec_point_hex2point_test_helper(group, ((void*)0),
                                                         POINT_CONVERSION_UNCOMPRESSED,
                                                         bnctx))
            || !TEST_true(ec_point_hex2point_test_helper(group, P,
                                                         POINT_CONVERSION_HYBRID,
                                                         bnctx))
            || !TEST_true(ec_point_hex2point_test_helper(group, ((void*)0),
                                                         POINT_CONVERSION_HYBRID,
                                                         bnctx)))
        goto err;

    ret = 1;

 err:
    EC_POINT_free(P);
    EC_GROUP_free(group);
    BN_CTX_free(bnctx);

    return ret;
}
