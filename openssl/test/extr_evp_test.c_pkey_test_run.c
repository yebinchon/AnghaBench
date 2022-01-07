
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* err; TYPE_1__* data; } ;
struct TYPE_5__ {scalar_t__ (* keyop ) (unsigned char*,unsigned char*,size_t*,int ,int ) ;unsigned char* ctx; int output_len; int output; int input_len; int input; } ;
typedef TYPE_1__ PKEY_DATA ;
typedef TYPE_2__ EVP_TEST ;
typedef unsigned char EVP_PKEY_CTX ;


 unsigned char* EVP_PKEY_CTX_dup (unsigned char*) ;
 int EVP_PKEY_CTX_free (unsigned char*) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int TEST_ptr (unsigned char*) ;
 int memory_err_compare (TYPE_2__*,char*,int ,int ,unsigned char*,size_t) ;
 scalar_t__ stub1 (unsigned char*,unsigned char*,size_t*,int ,int ) ;
 scalar_t__ stub2 (unsigned char*,unsigned char*,size_t*,int ,int ) ;
 scalar_t__ stub3 (unsigned char*,unsigned char*,size_t*,int ,int ) ;
 scalar_t__ stub4 (unsigned char*,unsigned char*,size_t*,int ,int ) ;

__attribute__((used)) static int pkey_test_run(EVP_TEST *t)
{
    PKEY_DATA *expected = t->data;
    unsigned char *got = ((void*)0);
    size_t got_len;
    EVP_PKEY_CTX *copy = ((void*)0);

    if (expected->keyop(expected->ctx, ((void*)0), &got_len,
                        expected->input, expected->input_len) <= 0
            || !TEST_ptr(got = OPENSSL_malloc(got_len))) {
        t->err = "KEYOP_LENGTH_ERROR";
        goto err;
    }
    if (expected->keyop(expected->ctx, got, &got_len,
                        expected->input, expected->input_len) <= 0) {
        t->err = "KEYOP_ERROR";
        goto err;
    }
    if (!memory_err_compare(t, "KEYOP_MISMATCH",
                            expected->output, expected->output_len,
                            got, got_len))
        goto err;

    t->err = ((void*)0);
    OPENSSL_free(got);
    got = ((void*)0);


    if (!TEST_ptr(copy = EVP_PKEY_CTX_dup(expected->ctx))) {
        t->err = "INTERNAL_ERROR";
        goto err;
    }
    if (expected->keyop(copy, ((void*)0), &got_len, expected->input,
                        expected->input_len) <= 0
            || !TEST_ptr(got = OPENSSL_malloc(got_len))) {
        t->err = "KEYOP_LENGTH_ERROR";
        goto err;
    }
    if (expected->keyop(copy, got, &got_len, expected->input,
                        expected->input_len) <= 0) {
        t->err = "KEYOP_ERROR";
        goto err;
    }
    if (!memory_err_compare(t, "KEYOP_MISMATCH",
                            expected->output, expected->output_len,
                            got, got_len))
        goto err;

 err:
    OPENSSL_free(got);
    EVP_PKEY_CTX_free(copy);
    return 1;
}
