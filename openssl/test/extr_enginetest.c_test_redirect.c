
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pt ;
typedef unsigned char EVP_PKEY_CTX ;
typedef unsigned char EVP_PKEY ;
typedef unsigned char ENGINE ;


 int ENGINE_free (unsigned char*) ;
 unsigned char* ENGINE_new () ;
 scalar_t__ ENGINE_set_id (unsigned char*,char*) ;
 scalar_t__ ENGINE_set_name (unsigned char*,char*) ;
 int ENGINE_set_pkey_meths (unsigned char*,int ) ;
 int EVP_PKEY_CTX_free (unsigned char*) ;
 unsigned char* EVP_PKEY_CTX_new (unsigned char*,unsigned char*) ;
 int EVP_PKEY_RSA ;
 scalar_t__ EVP_PKEY_encrypt (unsigned char*,unsigned char*,size_t*,unsigned char const*,int) ;
 scalar_t__ EVP_PKEY_encrypt_init (unsigned char*) ;
 int EVP_PKEY_free (unsigned char*) ;
 unsigned char* EVP_PKEY_meth_new (int ,int ) ;
 int EVP_PKEY_meth_set_encrypt (unsigned char*,int ,int ) ;
 scalar_t__ EVP_PKEY_set1_engine (unsigned char*,unsigned char*) ;
 size_t EVP_PKEY_size (unsigned char*) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int TEST_false (scalar_t__) ;
 int TEST_info (char*) ;
 int TEST_int_gt (scalar_t__,int ) ;
 int TEST_int_le (scalar_t__,int ) ;
 int TEST_ptr (unsigned char*) ;
 int TEST_ptr_null (unsigned char*) ;
 int TEST_true (scalar_t__) ;
 scalar_t__ called_encrypt ;
 unsigned char* get_test_pkey () ;
 int test_encrypt ;
 int test_pkey_meths ;
 unsigned char* test_rsa ;

__attribute__((used)) static int test_redirect(void)
{
    const unsigned char pt[] = "Hello World\n";
    unsigned char *tmp = ((void*)0);
    size_t len;
    EVP_PKEY_CTX *ctx = ((void*)0);
    ENGINE *e = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);

    int to_return = 0;

    if (!TEST_ptr(pkey = get_test_pkey()))
        goto err;

    len = EVP_PKEY_size(pkey);
    if (!TEST_ptr(tmp = OPENSSL_malloc(len)))
        goto err;

    if (!TEST_ptr(ctx = EVP_PKEY_CTX_new(pkey, ((void*)0))))
        goto err;
    TEST_info("EVP_PKEY_encrypt test: no redirection");

    if (!TEST_int_gt(EVP_PKEY_encrypt_init(ctx), 0)
            || !TEST_int_gt(EVP_PKEY_encrypt(ctx, tmp, &len, pt, sizeof(pt)), 0)
            || !TEST_false(called_encrypt))
        goto err;
    EVP_PKEY_CTX_free(ctx);
    ctx = ((void*)0);


    if (!TEST_ptr(e = ENGINE_new())
            || !TEST_true(ENGINE_set_id(e, "Test redirect engine"))
            || !TEST_true(ENGINE_set_name(e, "Test redirect engine")))
        goto err;






    if (!TEST_ptr_null(ctx = EVP_PKEY_CTX_new(pkey, e))
            || !TEST_int_le(EVP_PKEY_set1_engine(pkey, e), 0))
        goto err;


    if (!TEST_ptr(test_rsa = EVP_PKEY_meth_new(EVP_PKEY_RSA, 0)))
        goto err;
    ENGINE_set_pkey_meths(e, test_pkey_meths);


    if (!TEST_ptr(ctx = EVP_PKEY_CTX_new(pkey, e)))
        goto err;

    if (!TEST_int_le(EVP_PKEY_encrypt_init(ctx), 0))
        goto err;
    EVP_PKEY_CTX_free(ctx);
    ctx = ((void*)0);


    EVP_PKEY_meth_set_encrypt(test_rsa, 0, test_encrypt);

    TEST_info("EVP_PKEY_encrypt test: redirection via EVP_PKEY_CTX_new()");
    if (!TEST_ptr(ctx = EVP_PKEY_CTX_new(pkey, e)))
        goto err;

    if (!TEST_int_gt(EVP_PKEY_encrypt_init(ctx), 0)
            || !TEST_int_gt(EVP_PKEY_encrypt(ctx, tmp, &len, pt, sizeof(pt)), 0)
            || !TEST_true(called_encrypt))
        goto err;

    EVP_PKEY_CTX_free(ctx);
    ctx = ((void*)0);
    called_encrypt = 0;


    if (!TEST_ptr(ctx = EVP_PKEY_CTX_new(pkey, ((void*)0)))
            || !TEST_int_gt(EVP_PKEY_encrypt_init(ctx), 0)
            || !TEST_int_gt(EVP_PKEY_encrypt(ctx, tmp, &len, pt, sizeof(pt)), 0)
            || !TEST_false(called_encrypt))
        goto err;

    EVP_PKEY_CTX_free(ctx);
    ctx = ((void*)0);


    if (!TEST_true(EVP_PKEY_set1_engine(pkey, e)))
        goto err;

    TEST_info("EVP_PKEY_encrypt test: redirection via EVP_PKEY_set1_engine()");


    if (!TEST_ptr(ctx = EVP_PKEY_CTX_new(pkey, ((void*)0)))
            || !TEST_int_gt(EVP_PKEY_encrypt_init(ctx), 0)
            || !TEST_int_gt(EVP_PKEY_encrypt(ctx, tmp, &len, pt, sizeof(pt)), 0)
            || !TEST_true(called_encrypt))
        goto err;

    to_return = 1;

 err:
    EVP_PKEY_CTX_free(ctx);
    EVP_PKEY_free(pkey);
    ENGINE_free(e);
    OPENSSL_free(tmp);
    return to_return;
}
