
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t len; int value; } ;
struct TYPE_6__ {unsigned char* data; size_t data_size; size_t return_size; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int * BN_lebin2bn (int ,int,int *) ;
 int MAX_LEN ;
 TYPE_1__ OSSL_PARAM_DEFN (char*,int ,int *,int ) ;
 int OSSL_PARAM_UNSIGNED_INTEGER ;
 int OSSL_PARAM_get_BN (TYPE_1__*,int **) ;
 int OSSL_PARAM_set_BN (TYPE_1__*,int *) ;
 int TEST_BN_eq (int *,int *) ;
 int TEST_mem_eq (unsigned char*,size_t,unsigned char*,size_t) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int le_copy (unsigned char*,int ,size_t const) ;
 TYPE_2__* raw_values ;

__attribute__((used)) static int test_param_bignum(int n)
{
    unsigned char buf[MAX_LEN], bnbuf[MAX_LEN];
    const size_t len = raw_values[n].len;
    BIGNUM *b = ((void*)0), *c = ((void*)0);
    OSSL_PARAM param = OSSL_PARAM_DEFN("bn", OSSL_PARAM_UNSIGNED_INTEGER,
                                       ((void*)0), 0);
    int ret = 0;

    param.data = bnbuf;
    param.data_size = len;

    le_copy(buf, raw_values[n].value, len);
    if (!TEST_ptr(b = BN_lebin2bn(raw_values[n].value, (int)len, ((void*)0))))
        goto err;

    if (!TEST_true(OSSL_PARAM_set_BN(&param, b))
        || !TEST_mem_eq(bnbuf, param.return_size, buf, param.return_size))
        goto err;
    param.data_size = param.return_size;
    if (!TEST_true(OSSL_PARAM_get_BN(&param, &c))
        || !TEST_BN_eq(b, c))
        goto err;

    ret = 1;
err:
    BN_free(b);
    BN_free(c);
    return ret;
}
