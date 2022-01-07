
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* err; TYPE_1__* data; } ;
struct TYPE_5__ {size_t output_len; int output; int ctx; int params; } ;
typedef TYPE_1__ KDF_DATA ;
typedef TYPE_2__ EVP_TEST ;


 int EVP_KDF_CTX_set_params (int ,int ) ;
 scalar_t__ EVP_KDF_derive (int ,unsigned char*,size_t) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int TEST_ptr (unsigned char*) ;
 int memory_err_compare (TYPE_2__*,char*,int ,size_t,unsigned char*,size_t) ;

__attribute__((used)) static int kdf_test_run(EVP_TEST *t)
{
    KDF_DATA *expected = t->data;
    unsigned char *got = ((void*)0);
    size_t got_len = expected->output_len;

    if (!EVP_KDF_CTX_set_params(expected->ctx, expected->params)) {
        t->err = "KDF_CTRL_ERROR";
        return 1;
    }
    if (!TEST_ptr(got = OPENSSL_malloc(got_len))) {
        t->err = "INTERNAL_ERROR";
        goto err;
    }
    if (EVP_KDF_derive(expected->ctx, got, got_len) <= 0) {
        t->err = "KDF_DERIVE_ERROR";
        goto err;
    }
    if (!memory_err_compare(t, "KDF_MISMATCH",
                            expected->output, expected->output_len,
                            got, got_len))
        goto err;

    t->err = ((void*)0);

 err:
    OPENSSL_free(got);
    return 1;
}
