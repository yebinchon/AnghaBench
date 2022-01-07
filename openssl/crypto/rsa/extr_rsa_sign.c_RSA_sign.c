
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* meth; } ;
struct TYPE_7__ {int (* rsa_sign ) (int,unsigned char const*,unsigned int,unsigned char*,unsigned int*,TYPE_2__*) ;} ;
typedef TYPE_2__ RSA ;


 int NID_md5_sha1 ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 int RSA_F_RSA_SIGN ;
 int RSA_PKCS1_PADDING ;
 int RSA_PKCS1_PADDING_SIZE ;
 int RSA_R_DIGEST_TOO_BIG_FOR_RSA_KEY ;
 int RSA_R_INVALID_MESSAGE_LENGTH ;
 int RSA_private_encrypt (int,unsigned char const*,unsigned char*,TYPE_2__*,int ) ;
 int RSA_size (TYPE_2__*) ;
 int RSAerr (int ,int ) ;
 unsigned int SSL_SIG_LENGTH ;
 int encode_pkcs1 (unsigned char**,int*,int,unsigned char const*,unsigned int) ;
 int stub1 (int,unsigned char const*,unsigned int,unsigned char*,unsigned int*,TYPE_2__*) ;

int RSA_sign(int type, const unsigned char *m, unsigned int m_len,
             unsigned char *sigret, unsigned int *siglen, RSA *rsa)
{
    int encrypt_len, encoded_len = 0, ret = 0;
    unsigned char *tmps = ((void*)0);
    const unsigned char *encoded = ((void*)0);

    if (rsa->meth->rsa_sign) {
        return rsa->meth->rsa_sign(type, m, m_len, sigret, siglen, rsa);
    }


    if (type == NID_md5_sha1) {





        if (m_len != SSL_SIG_LENGTH) {
            RSAerr(RSA_F_RSA_SIGN, RSA_R_INVALID_MESSAGE_LENGTH);
            return 0;
        }
        encoded_len = SSL_SIG_LENGTH;
        encoded = m;
    } else {
        if (!encode_pkcs1(&tmps, &encoded_len, type, m, m_len))
            goto err;
        encoded = tmps;
    }

    if (encoded_len > RSA_size(rsa) - RSA_PKCS1_PADDING_SIZE) {
        RSAerr(RSA_F_RSA_SIGN, RSA_R_DIGEST_TOO_BIG_FOR_RSA_KEY);
        goto err;
    }
    encrypt_len = RSA_private_encrypt(encoded_len, encoded, sigret, rsa,
                                      RSA_PKCS1_PADDING);
    if (encrypt_len <= 0)
        goto err;

    *siglen = encrypt_len;
    ret = 1;

err:
    OPENSSL_clear_free(tmps, (size_t)encoded_len);
    return ret;
}
