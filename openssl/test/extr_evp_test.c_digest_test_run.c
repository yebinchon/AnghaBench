
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int output_len; int output; int digest; int input; } ;
struct TYPE_5__ {char* err; TYPE_2__* data; } ;
typedef TYPE_1__ EVP_TEST ;
typedef unsigned char EVP_MD_CTX ;
typedef TYPE_2__ DIGEST_DATA ;


 int EVP_DigestFinal (unsigned char*,unsigned char*,unsigned int*) ;
 int EVP_DigestFinalXOF (unsigned char*,unsigned char*,unsigned int) ;
 int EVP_DigestInit_ex (unsigned char*,int ,int *) ;
 unsigned int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_copy (unsigned char*,unsigned char*) ;
 int EVP_MD_CTX_free (unsigned char*) ;
 unsigned char* EVP_MD_CTX_new () ;
 int EVP_MD_FLAG_XOF ;
 int EVP_MD_flags (int ) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (unsigned int) ;
 int TEST_int_eq (unsigned int,unsigned int) ;
 int TEST_ptr (unsigned char*) ;
 int TEST_str_eq (char*,char*) ;
 int digest_update_fn ;
 int evp_test_buffer_do (int ,int ,unsigned char*) ;
 int memory_err_compare (TYPE_1__*,char*,int ,unsigned int,unsigned char*,unsigned int) ;

__attribute__((used)) static int digest_test_run(EVP_TEST *t)
{
    DIGEST_DATA *expected = t->data;
    EVP_MD_CTX *mctx;
    unsigned char *got = ((void*)0);
    unsigned int got_len;

    t->err = "TEST_FAILURE";
    if (!TEST_ptr(mctx = EVP_MD_CTX_new()))
        goto err;

    got = OPENSSL_malloc(expected->output_len > EVP_MAX_MD_SIZE ?
                         expected->output_len : EVP_MAX_MD_SIZE);
    if (!TEST_ptr(got))
        goto err;

    if (!EVP_DigestInit_ex(mctx, expected->digest, ((void*)0))) {
        t->err = "DIGESTINIT_ERROR";
        goto err;
    }
    if (!evp_test_buffer_do(expected->input, digest_update_fn, mctx)) {
        t->err = "DIGESTUPDATE_ERROR";
        goto err;
    }

    if (EVP_MD_flags(expected->digest) & EVP_MD_FLAG_XOF) {
        EVP_MD_CTX *mctx_cpy;
        char dont[] = "touch";

        if (!TEST_ptr(mctx_cpy = EVP_MD_CTX_new())) {
            goto err;
        }
        if (!EVP_MD_CTX_copy(mctx_cpy, mctx)) {
            EVP_MD_CTX_free(mctx_cpy);
            goto err;
        }
        if (!EVP_DigestFinalXOF(mctx_cpy, (unsigned char *)dont, 0)) {
            EVP_MD_CTX_free(mctx_cpy);
            t->err = "DIGESTFINALXOF_ERROR";
            goto err;
        }
        if (!TEST_str_eq(dont, "touch")) {
            EVP_MD_CTX_free(mctx_cpy);
            t->err = "DIGESTFINALXOF_ERROR";
            goto err;
        }
        EVP_MD_CTX_free(mctx_cpy);

        got_len = expected->output_len;
        if (!EVP_DigestFinalXOF(mctx, got, got_len)) {
            t->err = "DIGESTFINALXOF_ERROR";
            goto err;
        }
    } else {
        if (!EVP_DigestFinal(mctx, got, &got_len)) {
            t->err = "DIGESTFINAL_ERROR";
            goto err;
        }
    }
    if (!TEST_int_eq(expected->output_len, got_len)) {
        t->err = "DIGEST_LENGTH_MISMATCH";
        goto err;
    }
    if (!memory_err_compare(t, "DIGEST_MISMATCH",
                            expected->output, expected->output_len,
                            got, got_len))
        goto err;

    t->err = ((void*)0);

 err:
    OPENSSL_free(got);
    EVP_MD_CTX_free(mctx);
    return 1;
}
