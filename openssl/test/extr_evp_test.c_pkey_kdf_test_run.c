
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* err; TYPE_1__* data; } ;
struct TYPE_4__ {size_t output_len; int output; int ctx; } ;
typedef TYPE_1__ PKEY_KDF_DATA ;
typedef TYPE_2__ EVP_TEST ;


 scalar_t__ EVP_PKEY_derive (int ,unsigned char*,size_t*) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int TEST_mem_eq (int ,size_t,unsigned char*,size_t) ;
 int TEST_ptr (unsigned char*) ;

__attribute__((used)) static int pkey_kdf_test_run(EVP_TEST *t)
{
    PKEY_KDF_DATA *expected = t->data;
    unsigned char *got = ((void*)0);
    size_t got_len = expected->output_len;

    if (!TEST_ptr(got = OPENSSL_malloc(got_len))) {
        t->err = "INTERNAL_ERROR";
        goto err;
    }
    if (EVP_PKEY_derive(expected->ctx, got, &got_len) <= 0) {
        t->err = "KDF_DERIVE_ERROR";
        goto err;
    }
    if (!TEST_mem_eq(expected->output, expected->output_len, got, got_len)) {
        t->err = "KDF_MISMATCH";
        goto err;
    }
    t->err = ((void*)0);

 err:
    OPENSSL_free(got);
    return 1;
}
