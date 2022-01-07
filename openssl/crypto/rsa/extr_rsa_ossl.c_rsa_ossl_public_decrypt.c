
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; int * n; int _method_mod_n; int * e; TYPE_1__* meth; int lock; } ;
struct TYPE_4__ {int (* bn_mod_exp ) (int *,int *,int *,int *,int *,int ) ;} ;
typedef TYPE_2__ RSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_MONT_CTX_set_locked (int *,int ,int *,int *) ;
 int * BN_bin2bn (unsigned char const*,int,int *) ;
 int BN_bn2binpad (int *,unsigned char*,int) ;
 scalar_t__ BN_num_bits (int *) ;
 int BN_num_bytes (int *) ;
 int BN_sub (int *,int *,int *) ;
 scalar_t__ BN_ucmp (int *,int *) ;
 int ERR_R_MALLOC_FAILURE ;
 scalar_t__ OPENSSL_RSA_MAX_MODULUS_BITS ;
 scalar_t__ OPENSSL_RSA_MAX_PUBEXP_BITS ;
 scalar_t__ OPENSSL_RSA_SMALL_MODULUS_BITS ;
 int OPENSSL_clear_free (unsigned char*,int) ;
 unsigned char* OPENSSL_malloc (int) ;
 int RSA_FLAG_CACHE_PUBLIC ;
 int RSA_F_RSA_OSSL_PUBLIC_DECRYPT ;


 int RSA_R_BAD_E_VALUE ;
 int RSA_R_DATA_GREATER_THAN_MOD_LEN ;
 int RSA_R_DATA_TOO_LARGE_FOR_MODULUS ;
 int RSA_R_MODULUS_TOO_LARGE ;
 int RSA_R_PADDING_CHECK_FAILED ;
 int RSA_R_UNKNOWN_PADDING_TYPE ;

 int RSA_padding_check_PKCS1_type_1 (unsigned char*,int,unsigned char*,int,int) ;
 int RSA_padding_check_X931 (unsigned char*,int,unsigned char*,int,int) ;
 int RSAerr (int ,int ) ;
 int* bn_get_words (int *) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int stub1 (int *,int *,int *,int *,int *,int ) ;

__attribute__((used)) static int rsa_ossl_public_decrypt(int flen, const unsigned char *from,
                                  unsigned char *to, RSA *rsa, int padding)
{
    BIGNUM *f, *ret;
    int i, num = 0, r = -1;
    unsigned char *buf = ((void*)0);
    BN_CTX *ctx = ((void*)0);

    if (BN_num_bits(rsa->n) > OPENSSL_RSA_MAX_MODULUS_BITS) {
        RSAerr(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, RSA_R_MODULUS_TOO_LARGE);
        return -1;
    }

    if (BN_ucmp(rsa->n, rsa->e) <= 0) {
        RSAerr(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, RSA_R_BAD_E_VALUE);
        return -1;
    }


    if (BN_num_bits(rsa->n) > OPENSSL_RSA_SMALL_MODULUS_BITS) {
        if (BN_num_bits(rsa->e) > OPENSSL_RSA_MAX_PUBEXP_BITS) {
            RSAerr(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, RSA_R_BAD_E_VALUE);
            return -1;
        }
    }

    if ((ctx = BN_CTX_new()) == ((void*)0))
        goto err;
    BN_CTX_start(ctx);
    f = BN_CTX_get(ctx);
    ret = BN_CTX_get(ctx);
    num = BN_num_bytes(rsa->n);
    buf = OPENSSL_malloc(num);
    if (ret == ((void*)0) || buf == ((void*)0)) {
        RSAerr(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }





    if (flen > num) {
        RSAerr(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, RSA_R_DATA_GREATER_THAN_MOD_LEN);
        goto err;
    }

    if (BN_bin2bn(from, flen, f) == ((void*)0))
        goto err;

    if (BN_ucmp(f, rsa->n) >= 0) {
        RSAerr(RSA_F_RSA_OSSL_PUBLIC_DECRYPT,
               RSA_R_DATA_TOO_LARGE_FOR_MODULUS);
        goto err;
    }

    if (rsa->flags & RSA_FLAG_CACHE_PUBLIC)
        if (!BN_MONT_CTX_set_locked(&rsa->_method_mod_n, rsa->lock,
                                    rsa->n, ctx))
            goto err;

    if (!rsa->meth->bn_mod_exp(ret, f, rsa->e, rsa->n, ctx,
                               rsa->_method_mod_n))
        goto err;

    if ((padding == 128) && ((bn_get_words(ret)[0] & 0xf) != 12))
        if (!BN_sub(ret, rsa->n, ret))
            goto err;

    i = BN_bn2binpad(ret, buf, num);
    if (i < 0)
        goto err;

    switch (padding) {
    case 129:
        r = RSA_padding_check_PKCS1_type_1(to, num, buf, i, num);
        break;
    case 128:
        r = RSA_padding_check_X931(to, num, buf, i, num);
        break;
    case 130:
        memcpy(to, buf, (r = i));
        break;
    default:
        RSAerr(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, RSA_R_UNKNOWN_PADDING_TYPE);
        goto err;
    }
    if (r < 0)
        RSAerr(RSA_F_RSA_OSSL_PUBLIC_DECRYPT, RSA_R_PADDING_CHECK_FAILED);

 err:
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    OPENSSL_clear_free(buf, num);
    return r;
}
