
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secure ;
typedef int data ;
typedef int OSSL_PARAM_BLD ;
typedef int OSSL_PARAM ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_hex2bn (int **,char*) ;
 int * BN_new () ;
 int * BN_secure_new () ;
 int OSSL_NELEM (int *) ;
 int TEST_ptr (int *) ;
 int TEST_ptr_null (int ) ;
 int TEST_true (int ) ;
 int ossl_param_bld_init (int *) ;
 int ossl_param_bld_push_BN (int *,char*,int *) ;
 int ossl_param_bld_push_uint (int *,char*,int) ;
 int ossl_param_bld_push_utf8_string (int *,char*,char*,int) ;
 int ossl_param_bld_to_param_ex (int *,int *,int,unsigned char*,int,unsigned char*,int) ;

__attribute__((used)) static int template_static_fail_test(int n)
{
    unsigned char data[10000], secure[500];
    OSSL_PARAM_BLD bld;
    OSSL_PARAM prms[20];
    BIGNUM *bn = ((void*)0);
    int res = 0;

    ossl_param_bld_init(&bld);
    if (!TEST_true(ossl_param_bld_push_uint(&bld, "i", 6))
        || !TEST_ptr(bn = (n & 1) == 0 ? BN_new() : BN_secure_new())
        || !TEST_true(BN_hex2bn(&bn, "ABCDEF78901234567890ABCDEF0987987654321"))
        || !TEST_true(ossl_param_bld_push_BN(&bld, "bn", bn))
        || !TEST_true(ossl_param_bld_push_utf8_string(&bld, "utf8_s", "abc",
                                                      1000))

        || !TEST_ptr_null(ossl_param_bld_to_param_ex(&bld, ((void*)0), 0, data,
                                                     sizeof(data), secure,
                                                     sizeof(secure)))

        || !TEST_ptr_null(ossl_param_bld_to_param_ex(&bld, prms, 2,
                                                     data, sizeof(data),
                                                     secure, sizeof(secure)))

        || !TEST_ptr_null(ossl_param_bld_to_param_ex(&bld, prms,
                                                     OSSL_NELEM(prms),
                                                     ((void*)0), 0, secure,
                                                     sizeof(secure)))

        || !TEST_ptr_null(ossl_param_bld_to_param_ex(&bld, prms,
                                                     OSSL_NELEM(prms),
                                                     data, 50, secure,
                                                     sizeof(secure))))
            goto err;
        if ((n & 1) == 1) {

            if (!TEST_ptr_null(ossl_param_bld_to_param_ex(&bld, prms,
                                                          OSSL_NELEM(prms),
                                                          data, sizeof(data),
                                                          ((void*)0), 0))

            || !TEST_ptr_null(ossl_param_bld_to_param_ex(&bld, prms,
                                                         OSSL_NELEM(prms),
                                                         data, sizeof(data),
                                                         secure, 4)))
                goto err;
        }
    res = 1;
err:
    BN_free(bn);
    return res;
}
