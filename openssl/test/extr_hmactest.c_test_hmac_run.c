
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key_len; int digest; int data_len; int data; int * key; } ;
typedef int HMAC_CTX ;


 int EVP_MAX_MD_SIZE ;
 int * EVP_sha1 () ;
 int * EVP_sha256 () ;
 int HMAC_CTX_free (int *) ;
 int HMAC_CTX_get_md (int *) ;
 int * HMAC_CTX_new () ;
 int HMAC_CTX_reset (int *) ;
 int HMAC_Final (int *,unsigned char*,unsigned int*) ;
 int HMAC_Init_ex (int *,int *,int,int *,int *) ;
 int HMAC_Update (int *,int ,int ) ;
 int TEST_false (int ) ;
 int TEST_ptr (int *) ;
 int TEST_ptr_eq (int ,int *) ;
 int TEST_ptr_null (int ) ;
 int TEST_str_eq (char*,int ) ;
 int TEST_true (int ) ;
 char* pt (unsigned char*,unsigned int) ;
 TYPE_1__* test ;

__attribute__((used)) static int test_hmac_run(void)
{
    char *p;
    HMAC_CTX *ctx = ((void*)0);
    unsigned char buf[EVP_MAX_MD_SIZE];
    unsigned int len;
    int ret = 0;

    ctx = HMAC_CTX_new();
    HMAC_CTX_reset(ctx);

    if (!TEST_ptr(ctx)
        || !TEST_ptr_null(HMAC_CTX_get_md(ctx))
        || !TEST_false(HMAC_Init_ex(ctx, ((void*)0), 0, ((void*)0), ((void*)0)))
        || !TEST_false(HMAC_Update(ctx, test[4].data, test[4].data_len))
        || !TEST_false(HMAC_Init_ex(ctx, test[4].key, -1, EVP_sha1(), ((void*)0))))
        goto err;

    if (!TEST_true(HMAC_Init_ex(ctx, test[4].key, test[4].key_len, EVP_sha1(), ((void*)0)))
        || !TEST_true(HMAC_Update(ctx, test[4].data, test[4].data_len))
        || !TEST_true(HMAC_Final(ctx, buf, &len)))
        goto err;

    p = pt(buf, len);
    if (!TEST_str_eq(p, test[4].digest))
        goto err;

    if (!TEST_false(HMAC_Init_ex(ctx, ((void*)0), 0, EVP_sha256(), ((void*)0))))
        goto err;

    if (!TEST_true(HMAC_Init_ex(ctx, test[5].key, test[5].key_len, EVP_sha256(), ((void*)0)))
        || !TEST_ptr_eq(HMAC_CTX_get_md(ctx), EVP_sha256())
        || !TEST_true(HMAC_Update(ctx, test[5].data, test[5].data_len))
        || !TEST_true(HMAC_Final(ctx, buf, &len)))
        goto err;

    p = pt(buf, len);
    if (!TEST_str_eq(p, test[5].digest))
        goto err;

    if (!TEST_true(HMAC_Init_ex(ctx, test[6].key, test[6].key_len, ((void*)0), ((void*)0)))
        || !TEST_true(HMAC_Update(ctx, test[6].data, test[6].data_len))
        || !TEST_true(HMAC_Final(ctx, buf, &len)))
        goto err;
    p = pt(buf, len);
    if (!TEST_str_eq(p, test[6].digest))
        goto err;

    ret = 1;
err:
    HMAC_CTX_free(ctx);
    return ret;
}
