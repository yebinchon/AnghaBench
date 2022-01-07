
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ encoding; int input_len; int input; int output_len; int output; } ;
struct TYPE_5__ {char* err; TYPE_2__* data; } ;
typedef TYPE_1__ EVP_TEST ;
typedef unsigned char EVP_ENCODE_CTX ;
typedef TYPE_2__ ENCODE_DATA ;


 scalar_t__ BASE64_CANONICAL_ENCODING ;
 scalar_t__ BASE64_INVALID_ENCODING ;
 int EVP_DECODE_LENGTH (int ) ;
 int EVP_DecodeFinal (unsigned char*,unsigned char*,int*) ;
 int EVP_DecodeInit (unsigned char*) ;
 scalar_t__ EVP_DecodeUpdate (unsigned char*,unsigned char*,int*,int ,int ) ;
 int EVP_ENCODE_CTX_free (unsigned char*) ;
 unsigned char* EVP_ENCODE_CTX_new () ;
 int EVP_ENCODE_LENGTH (int ) ;
 int EVP_EncodeFinal (unsigned char*,unsigned char*,int*) ;
 int EVP_EncodeInit (unsigned char*) ;
 int EVP_EncodeUpdate (unsigned char*,unsigned char*,int*,int ,int ) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int ) ;
 int TEST_ptr (unsigned char*) ;
 int TEST_true (int ) ;
 int memory_err_compare (TYPE_1__*,char*,int ,int ,unsigned char*,int) ;

__attribute__((used)) static int encode_test_run(EVP_TEST *t)
{
    ENCODE_DATA *expected = t->data;
    unsigned char *encode_out = ((void*)0), *decode_out = ((void*)0);
    int output_len, chunk_len;
    EVP_ENCODE_CTX *decode_ctx = ((void*)0), *encode_ctx = ((void*)0);

    if (!TEST_ptr(decode_ctx = EVP_ENCODE_CTX_new())) {
        t->err = "INTERNAL_ERROR";
        goto err;
    }

    if (expected->encoding == BASE64_CANONICAL_ENCODING) {

        if (!TEST_ptr(encode_ctx = EVP_ENCODE_CTX_new())
                || !TEST_ptr(encode_out =
                        OPENSSL_malloc(EVP_ENCODE_LENGTH(expected->input_len))))
            goto err;

        EVP_EncodeInit(encode_ctx);
        if (!TEST_true(EVP_EncodeUpdate(encode_ctx, encode_out, &chunk_len,
                                        expected->input, expected->input_len)))
            goto err;

        output_len = chunk_len;

        EVP_EncodeFinal(encode_ctx, encode_out + chunk_len, &chunk_len);
        output_len += chunk_len;

        if (!memory_err_compare(t, "BAD_ENCODING",
                                expected->output, expected->output_len,
                                encode_out, output_len))
            goto err;
    }

    if (!TEST_ptr(decode_out =
                OPENSSL_malloc(EVP_DECODE_LENGTH(expected->output_len))))
        goto err;

    EVP_DecodeInit(decode_ctx);
    if (EVP_DecodeUpdate(decode_ctx, decode_out, &chunk_len, expected->output,
                         expected->output_len) < 0) {
        t->err = "DECODE_ERROR";
        goto err;
    }
    output_len = chunk_len;

    if (EVP_DecodeFinal(decode_ctx, decode_out + chunk_len, &chunk_len) != 1) {
        t->err = "DECODE_ERROR";
        goto err;
    }
    output_len += chunk_len;

    if (expected->encoding != BASE64_INVALID_ENCODING
            && !memory_err_compare(t, "BAD_DECODING",
                                   expected->input, expected->input_len,
                                   decode_out, output_len)) {
        t->err = "BAD_DECODING";
        goto err;
    }

    t->err = ((void*)0);
 err:
    OPENSSL_free(encode_out);
    OPENSSL_free(decode_out);
    EVP_ENCODE_CTX_free(decode_ctx);
    EVP_ENCODE_CTX_free(encode_ctx);
    return 1;
}
