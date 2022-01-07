
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_1__ ;


typedef int secure ;
typedef int data ;
struct TYPE_19__ {char* key; unsigned int data_type; char* data; int data_size; } ;
typedef int OSSL_PARAM_BLD ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int BN_ULONG ;
typedef TYPE_1__ BIGNUM ;


 int BN_free (TYPE_1__*) ;
 scalar_t__ BN_get_word (TYPE_1__*) ;
 TYPE_1__* BN_new () ;
 TYPE_1__* BN_secure_new () ;
 int BN_set_word (TYPE_1__*,int) ;
 int OPENSSL_free (char*) ;
 int OSSL_NELEM (TYPE_1__*) ;
 int OSSL_PARAM_UNSIGNED_INTEGER ;
 int OSSL_PARAM_get_BN (TYPE_1__*,TYPE_1__**) ;
 int OSSL_PARAM_get_uint (TYPE_1__*,unsigned int*) ;
 int OSSL_PARAM_get_utf8_string (TYPE_1__*,char**,int ) ;
 TYPE_1__* OSSL_PARAM_locate (TYPE_1__*,char*) ;
 int TEST_ptr (TYPE_1__*) ;
 int TEST_size_t_eq (int ,int) ;
 int TEST_size_t_le (int ,int) ;
 int TEST_str_eq (char*,char*) ;
 int TEST_true (int ) ;
 int TEST_uint_eq (unsigned int,int) ;
 int ossl_param_bld_init (int *) ;
 int ossl_param_bld_push_BN (int *,char*,TYPE_1__*) ;
 int ossl_param_bld_push_uint (int *,char*,int) ;
 int ossl_param_bld_push_utf8_string (int *,char*,char*,int ) ;
 TYPE_1__* ossl_param_bld_to_param_ex (int *,TYPE_1__*,int ,unsigned char*,int,unsigned char*,int) ;

__attribute__((used)) static int template_static_params_test(int n)
{
    unsigned char data[1000], secure[500];
    OSSL_PARAM_BLD bld;
    OSSL_PARAM params[20], *p;
    BIGNUM *bn = ((void*)0), *bn_r = ((void*)0);
    unsigned int i;
    char *utf = ((void*)0);
    int res = 0;

    ossl_param_bld_init(&bld);
    if (!TEST_true(ossl_param_bld_push_uint(&bld, "i", 6))
        || !TEST_ptr(bn = (n & 1) == 0 ? BN_new() : BN_secure_new())
        || !TEST_true(BN_set_word(bn, 1337))
        || !TEST_true(ossl_param_bld_push_BN(&bld, "bn", bn))
        || !TEST_true(ossl_param_bld_push_utf8_string(&bld, "utf8_s", "bar",
                                                      0))
        || !TEST_ptr(ossl_param_bld_to_param_ex(&bld, params,
                                                OSSL_NELEM(params),
                                                data, sizeof(data),
                                                secure, sizeof(secure)))

        || !TEST_ptr(p = OSSL_PARAM_locate(params, "i"))
        || !TEST_true(OSSL_PARAM_get_uint(p, &i))
        || !TEST_str_eq(p->key, "i")
        || !TEST_uint_eq(p->data_type, OSSL_PARAM_UNSIGNED_INTEGER)
        || !TEST_size_t_eq(p->data_size, sizeof(int))
        || !TEST_uint_eq(i, 6)

        || !TEST_ptr(p = OSSL_PARAM_locate(params, "bn"))
        || !TEST_true(OSSL_PARAM_get_BN(p, &bn_r))
        || !TEST_str_eq(p->key, "bn")
        || !TEST_uint_eq(p->data_type, OSSL_PARAM_UNSIGNED_INTEGER)
        || !TEST_size_t_le(p->data_size, sizeof(BN_ULONG))
        || !TEST_uint_eq((unsigned int)BN_get_word(bn_r), 1337)

        || !TEST_ptr(p = OSSL_PARAM_locate(params, "utf8_s"))
        || !TEST_str_eq(p->data, "bar")
        || !TEST_true(OSSL_PARAM_get_utf8_string(p, &utf, 0))
        || !TEST_str_eq(utf, "bar"))
        goto err;
    res = 1;
err:
    OPENSSL_free(utf);
    BN_free(bn);
    BN_free(bn_r);
    return res;
}
