
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_len; int data; } ;
typedef int HMAC_CTX ;


 int * EVP_sha1 () ;
 int HMAC_CTX_free (int *) ;
 int HMAC_CTX_get_md (int *) ;
 int * HMAC_CTX_new () ;
 int HMAC_Init_ex (int *,int *,int ,int *,int *) ;
 int HMAC_Update (int *,int ,int ) ;
 int TEST_false (int ) ;
 int TEST_ptr (int *) ;
 int TEST_ptr_null (int ) ;
 TYPE_1__* test ;

__attribute__((used)) static int test_hmac_bad(void)
{
    HMAC_CTX *ctx = ((void*)0);
    int ret = 0;

    ctx = HMAC_CTX_new();
    if (!TEST_ptr(ctx)
        || !TEST_ptr_null(HMAC_CTX_get_md(ctx))
        || !TEST_false(HMAC_Init_ex(ctx, ((void*)0), 0, ((void*)0), ((void*)0)))
        || !TEST_false(HMAC_Update(ctx, test[4].data, test[4].data_len))
        || !TEST_false(HMAC_Init_ex(ctx, ((void*)0), 0, EVP_sha1(), ((void*)0)))
        || !TEST_false(HMAC_Update(ctx, test[4].data, test[4].data_len)))
        goto err;

    ret = 1;
err:
    HMAC_CTX_free(ctx);
    return ret;
}
