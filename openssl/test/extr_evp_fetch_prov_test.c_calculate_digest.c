
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,char const*,size_t) ;
 int EVP_MD_CTX_free (int *) ;
 int const* EVP_MD_CTX_md (int *) ;
 int * EVP_MD_CTX_new () ;
 int SHA256_DIGEST_LENGTH ;
 int TEST_mem_eq (unsigned char*,int,unsigned char const*,int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int) ;

__attribute__((used)) static int calculate_digest(const EVP_MD *md, const char *msg, size_t len,
                            const unsigned char *exptd)
{
    unsigned char out[SHA256_DIGEST_LENGTH];
    EVP_MD_CTX *ctx;
    int ret = 0;

    if (!TEST_ptr(ctx = EVP_MD_CTX_new())
            || !TEST_true(EVP_DigestInit_ex(ctx, md, ((void*)0)))
            || !TEST_true(EVP_DigestUpdate(ctx, msg, len))
            || !TEST_true(EVP_DigestFinal_ex(ctx, out, ((void*)0)))
            || !TEST_mem_eq(out, SHA256_DIGEST_LENGTH, exptd,
                            SHA256_DIGEST_LENGTH)
            || !TEST_true(md == EVP_MD_CTX_md(ctx)))
        goto err;

    ret = 1;
 err:
    EVP_MD_CTX_free(ctx);
    return ret;
}
