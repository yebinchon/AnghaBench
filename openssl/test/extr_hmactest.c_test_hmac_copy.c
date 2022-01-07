
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int digest; int data_len; int data; int key_len; int key; } ;
typedef int HMAC_CTX ;


 int EVP_MAX_MD_SIZE ;
 int EVP_sha1 () ;
 int HMAC_CTX_copy (int *,int *) ;
 int HMAC_CTX_free (int *) ;
 int * HMAC_CTX_new () ;
 int HMAC_Final (int *,unsigned char*,unsigned int*) ;
 int HMAC_Init_ex (int *,int ,int ,int ,int *) ;
 int HMAC_Update (int *,int ,int ) ;
 int TEST_ptr (int *) ;
 int TEST_str_eq (char*,int ) ;
 int TEST_true (int ) ;
 char* pt (unsigned char*,unsigned int) ;
 TYPE_1__* test ;

__attribute__((used)) static int test_hmac_copy(void)
{
    char *p;
    HMAC_CTX *ctx = ((void*)0), *ctx2 = ((void*)0);
    unsigned char buf[EVP_MAX_MD_SIZE];
    unsigned int len;
    int ret = 0;

    ctx = HMAC_CTX_new();
    ctx2 = HMAC_CTX_new();
    if (!TEST_ptr(ctx) || !TEST_ptr(ctx2))
        goto err;

    if (!TEST_true(HMAC_Init_ex(ctx, test[7].key, test[7].key_len, EVP_sha1(), ((void*)0)))
        || !TEST_true(HMAC_Update(ctx, test[7].data, test[7].data_len))
        || !TEST_true(HMAC_CTX_copy(ctx2, ctx))
        || !TEST_true(HMAC_Final(ctx2, buf, &len)))
        goto err;

    p = pt(buf, len);
    if (!TEST_str_eq(p, test[7].digest))
        goto err;

    ret = 1;
err:
    HMAC_CTX_free(ctx2);
    HMAC_CTX_free(ctx);
    return ret;
}
