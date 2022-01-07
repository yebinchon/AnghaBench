
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; scalar_t__ param_bin_len; int param_bin; } ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_get_mem_data (int *,unsigned char**) ;
 int * BIO_new (int ) ;
 int * BIO_new_mem_buf (int ,int) ;
 int BIO_s_mem () ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new_id (int,int *) ;
 int EVP_PKEY_free (int *) ;
 scalar_t__ TEST_int_gt (int,int ) ;
 scalar_t__ TEST_mem_eq (int ,int,unsigned char*,int) ;
 scalar_t__ TEST_ptr (int *) ;
 int * d2i_KeyParams_bio (int,int **,int *) ;
 int i2d_KeyParams_bio (int *,int *) ;
 TYPE_1__* pkey_params ;

__attribute__((used)) static int params_bio_test(int id)
{
    int ret, out_len;
    BIO *in = ((void*)0), *out = ((void*)0);
    EVP_PKEY_CTX *ctx = ((void*)0);
    EVP_PKEY *in_key = ((void*)0), *out_key = ((void*)0);
    unsigned char *out_bin;
    int type = pkey_params[id].type;

    ret = TEST_ptr(ctx = EVP_PKEY_CTX_new_id(type, ((void*)0)))
        && TEST_ptr(in = BIO_new_mem_buf(pkey_params[id].param_bin,
                                        (int)pkey_params[id].param_bin_len))

        && TEST_ptr(d2i_KeyParams_bio(type, &in_key, in))
        && TEST_ptr(out = BIO_new(BIO_s_mem()))

        && TEST_int_gt(i2d_KeyParams_bio(out, in_key), 0)

        && TEST_int_gt(out_len = BIO_get_mem_data(out, &out_bin), 0)
        && TEST_mem_eq(pkey_params[id].param_bin,
                       (int)pkey_params[id].param_bin_len,
                       out_bin, out_len);

    BIO_free(in);
    BIO_free(out);
    EVP_PKEY_free(in_key);
    EVP_PKEY_free(out_key);
    EVP_PKEY_CTX_free(ctx);
    return ret;
}
