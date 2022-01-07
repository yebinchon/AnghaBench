
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_23__ {char const* key; char const* data; int data_type; int data_size; } ;
typedef int OSSL_PARAM_BLD ;
typedef TYPE_1__ OSSL_PARAM ;
typedef TYPE_1__ BIGNUM ;


 int BN_cmp (TYPE_1__*,TYPE_1__*) ;
 int BN_free (TYPE_1__*) ;
 TYPE_1__* BN_new () ;
 int BN_set_word (TYPE_1__*,int) ;
 int OPENSSL_free (char*) ;
 int OSSL_PARAM_INTEGER ;
 int OSSL_PARAM_REAL ;
 int OSSL_PARAM_UNSIGNED_INTEGER ;
 int OSSL_PARAM_get_BN (TYPE_1__*,TYPE_1__**) ;
 int OSSL_PARAM_get_double (TYPE_1__*,double*) ;
 int OSSL_PARAM_get_int (TYPE_1__*,int*) ;
 int OSSL_PARAM_get_int32 (TYPE_1__*,scalar_t__*) ;
 int OSSL_PARAM_get_int64 (TYPE_1__*,scalar_t__*) ;
 int OSSL_PARAM_get_long (TYPE_1__*,long*) ;
 int OSSL_PARAM_get_utf8_ptr (TYPE_1__*,char const**) ;
 int OSSL_PARAM_get_utf8_string (TYPE_1__*,char**,int ) ;
 TYPE_1__* OSSL_PARAM_locate (TYPE_1__*,char*) ;
 int TEST_double_eq (double,double) ;
 int TEST_int_eq (int,int) ;
 int TEST_long_eq (long,int) ;
 int TEST_ptr (TYPE_1__*) ;
 int TEST_size_t_eq (int ,int) ;
 int TEST_str_eq (char const*,char*) ;
 int TEST_true (int ) ;
 int TEST_uint_eq (int ,int ) ;
 int ossl_param_bld_free (TYPE_1__*) ;
 int ossl_param_bld_init (int *) ;
 int ossl_param_bld_push_BN (int *,char*,TYPE_1__*) ;
 int ossl_param_bld_push_double (int *,char*,double) ;
 int ossl_param_bld_push_int (int *,char*,int) ;
 int ossl_param_bld_push_int32 (int *,char*,int) ;
 int ossl_param_bld_push_int64 (int *,char*,int) ;
 int ossl_param_bld_push_long (int *,char*,int) ;
 int ossl_param_bld_push_utf8_ptr (int *,char*,char*,int ) ;
 int ossl_param_bld_push_utf8_string (int *,char*,char*,int) ;
 TYPE_1__* ossl_param_bld_to_param (int *) ;

__attribute__((used)) static int template_public_test(void)
{
    OSSL_PARAM_BLD bld;
    OSSL_PARAM *params = ((void*)0), *p;
    BIGNUM *bn = ((void*)0), *bn_res = ((void*)0);
    int i;
    long int l;
    int32_t i32;
    int64_t i64;
    double d;
    char *utf = ((void*)0);
    const char *cutf;
    int res = 0;

    ossl_param_bld_init(&bld);
    if (!TEST_true(ossl_param_bld_push_int(&bld, "i", -6))
        || !TEST_true(ossl_param_bld_push_long(&bld, "l", 42))
        || !TEST_true(ossl_param_bld_push_int32(&bld, "i32", 1532))
        || !TEST_true(ossl_param_bld_push_int64(&bld, "i64", -9999999))
        || !TEST_true(ossl_param_bld_push_double(&bld, "d", 1.61803398875))
        || !TEST_ptr(bn = BN_new())
        || !TEST_true(BN_set_word(bn, 1729))
        || !TEST_true(ossl_param_bld_push_BN(&bld, "bignumber", bn))
        || !TEST_true(ossl_param_bld_push_utf8_string(&bld, "utf8_s", "foo",
                                                      sizeof("foo")))
        || !TEST_true(ossl_param_bld_push_utf8_ptr(&bld, "utf8_p", "bar-boom",
                                                   0))
        || !TEST_ptr(params = ossl_param_bld_to_param(&bld))

        || !TEST_ptr(p = OSSL_PARAM_locate(params, "i"))
        || !TEST_true(OSSL_PARAM_get_int(p, &i))
        || !TEST_str_eq(p->key, "i")
        || !TEST_uint_eq(p->data_type, OSSL_PARAM_INTEGER)
        || !TEST_size_t_eq(p->data_size, sizeof(int))
        || !TEST_int_eq(i, -6)

        || !TEST_ptr(p = OSSL_PARAM_locate(params, "i32"))
        || !TEST_true(OSSL_PARAM_get_int32(p, &i32))
        || !TEST_str_eq(p->key, "i32")
        || !TEST_uint_eq(p->data_type, OSSL_PARAM_INTEGER)
        || !TEST_size_t_eq(p->data_size, sizeof(int32_t))
        || !TEST_int_eq((int)i32, 1532)

        || !TEST_ptr(p = OSSL_PARAM_locate(params, "i64"))
        || !TEST_str_eq(p->key, "i64")
        || !TEST_uint_eq(p->data_type, OSSL_PARAM_INTEGER)
        || !TEST_size_t_eq(p->data_size, sizeof(int64_t))
        || !TEST_true(OSSL_PARAM_get_int64(p, &i64))
        || !TEST_long_eq((long)i64, -9999999)

        || !TEST_ptr(p = OSSL_PARAM_locate(params, "l"))
        || !TEST_str_eq(p->key, "l")
        || !TEST_uint_eq(p->data_type, OSSL_PARAM_INTEGER)
        || !TEST_size_t_eq(p->data_size, sizeof(long int))
        || !TEST_true(OSSL_PARAM_get_long(p, &l))
        || !TEST_long_eq(l, 42)

        || !TEST_ptr(p = OSSL_PARAM_locate(params, "d"))
        || !TEST_true(OSSL_PARAM_get_double(p, &d))
        || !TEST_str_eq(p->key, "d")
        || !TEST_uint_eq(p->data_type, OSSL_PARAM_REAL)
        || !TEST_size_t_eq(p->data_size, sizeof(double))
        || !TEST_double_eq(d, 1.61803398875)

        || !TEST_ptr(p = OSSL_PARAM_locate(params, "utf8_s"))
        || !TEST_str_eq(p->data, "foo")
        || !TEST_true(OSSL_PARAM_get_utf8_string(p, &utf, 0))
        || !TEST_str_eq(utf, "foo")

        || !TEST_ptr(p = OSSL_PARAM_locate(params, "utf8_p"))
        || !TEST_true(OSSL_PARAM_get_utf8_ptr(p, &cutf))
        || !TEST_str_eq(cutf, "bar-boom")

        || !TEST_ptr(p = OSSL_PARAM_locate(params, "bignumber"))
        || !TEST_str_eq(p->key, "bignumber")
        || !TEST_uint_eq(p->data_type, OSSL_PARAM_UNSIGNED_INTEGER)
        || !TEST_true(OSSL_PARAM_get_BN(p, &bn_res))
        || !TEST_int_eq(BN_cmp(bn_res, bn), 0))
        goto err;
    res = 1;
err:
    ossl_param_bld_free(params);
    OPENSSL_free(utf);
    BN_free(bn);
    BN_free(bn_res);
    return res;
}
