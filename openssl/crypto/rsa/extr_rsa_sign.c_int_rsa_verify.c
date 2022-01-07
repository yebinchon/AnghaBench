
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int EVP_MD ;


 int ERR_R_MALLOC_FAILURE ;
 unsigned int EVP_MD_size (int const*) ;
 int * EVP_get_digestbynid (int) ;
 int NID_md5_sha1 ;
 int NID_mdc2 ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int RSA_F_INT_RSA_VERIFY ;
 int RSA_PKCS1_PADDING ;
 int RSA_R_BAD_SIGNATURE ;
 int RSA_R_INVALID_DIGEST_LENGTH ;
 int RSA_R_INVALID_MESSAGE_LENGTH ;
 int RSA_R_UNKNOWN_ALGORITHM_TYPE ;
 int RSA_R_WRONG_SIGNATURE_LENGTH ;
 int RSA_public_decrypt (int,unsigned char const*,unsigned char*,int *,int ) ;
 scalar_t__ RSA_size (int *) ;
 int RSAerr (int ,int ) ;
 int SSL_SIG_LENGTH ;
 int encode_pkcs1 (unsigned char**,int*,int,unsigned char const*,unsigned int) ;
 scalar_t__ memcmp (unsigned char const*,unsigned char const*,int) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;

int int_rsa_verify(int type, const unsigned char *m, unsigned int m_len,
                   unsigned char *rm, size_t *prm_len,
                   const unsigned char *sigbuf, size_t siglen, RSA *rsa)
{
    int decrypt_len, ret = 0, encoded_len = 0;
    unsigned char *decrypt_buf = ((void*)0), *encoded = ((void*)0);

    if (siglen != (size_t)RSA_size(rsa)) {
        RSAerr(RSA_F_INT_RSA_VERIFY, RSA_R_WRONG_SIGNATURE_LENGTH);
        return 0;
    }


    decrypt_buf = OPENSSL_malloc(siglen);
    if (decrypt_buf == ((void*)0)) {
        RSAerr(RSA_F_INT_RSA_VERIFY, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    decrypt_len = RSA_public_decrypt((int)siglen, sigbuf, decrypt_buf, rsa,
                                     RSA_PKCS1_PADDING);
    if (decrypt_len <= 0)
        goto err;

    if (type == NID_md5_sha1) {





        if (decrypt_len != SSL_SIG_LENGTH) {
            RSAerr(RSA_F_INT_RSA_VERIFY, RSA_R_BAD_SIGNATURE);
            goto err;
        }

        if (rm != ((void*)0)) {
            memcpy(rm, decrypt_buf, SSL_SIG_LENGTH);
            *prm_len = SSL_SIG_LENGTH;
        } else {
            if (m_len != SSL_SIG_LENGTH) {
                RSAerr(RSA_F_INT_RSA_VERIFY, RSA_R_INVALID_MESSAGE_LENGTH);
                goto err;
            }

            if (memcmp(decrypt_buf, m, SSL_SIG_LENGTH) != 0) {
                RSAerr(RSA_F_INT_RSA_VERIFY, RSA_R_BAD_SIGNATURE);
                goto err;
            }
        }
    } else if (type == NID_mdc2 && decrypt_len == 2 + 16
               && decrypt_buf[0] == 0x04 && decrypt_buf[1] == 0x10) {




        if (rm != ((void*)0)) {
            memcpy(rm, decrypt_buf + 2, 16);
            *prm_len = 16;
        } else {
            if (m_len != 16) {
                RSAerr(RSA_F_INT_RSA_VERIFY, RSA_R_INVALID_MESSAGE_LENGTH);
                goto err;
            }

            if (memcmp(m, decrypt_buf + 2, 16) != 0) {
                RSAerr(RSA_F_INT_RSA_VERIFY, RSA_R_BAD_SIGNATURE);
                goto err;
            }
        }
    } else {





        if (rm != ((void*)0)) {
            const EVP_MD *md = EVP_get_digestbynid(type);
            if (md == ((void*)0)) {
                RSAerr(RSA_F_INT_RSA_VERIFY, RSA_R_UNKNOWN_ALGORITHM_TYPE);
                goto err;
            }

            m_len = EVP_MD_size(md);
            if (m_len > (size_t)decrypt_len) {
                RSAerr(RSA_F_INT_RSA_VERIFY, RSA_R_INVALID_DIGEST_LENGTH);
                goto err;
            }
            m = decrypt_buf + decrypt_len - m_len;
        }


        if (!encode_pkcs1(&encoded, &encoded_len, type, m, m_len))
            goto err;

        if (encoded_len != decrypt_len
            || memcmp(encoded, decrypt_buf, encoded_len) != 0) {
            RSAerr(RSA_F_INT_RSA_VERIFY, RSA_R_BAD_SIGNATURE);
            goto err;
        }


        if (rm != ((void*)0)) {
            memcpy(rm, m, m_len);
            *prm_len = m_len;
        }
    }

    ret = 1;

err:
    OPENSSL_clear_free(encoded, (size_t)encoded_len);
    OPENSSL_clear_free(decrypt_buf, siglen);
    return ret;
}
