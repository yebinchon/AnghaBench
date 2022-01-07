
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int smd ;
typedef int buf ;
struct TYPE_6__ {unsigned char* server_random; unsigned char* client_random; } ;
struct TYPE_8__ {TYPE_2__* session; TYPE_1__ s3; } ;
struct TYPE_7__ {unsigned char* master_key; int master_key_length; } ;
typedef TYPE_3__ SSL ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int *,int *) ;
 int EVP_DigestUpdate (int *,unsigned char*,int) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int * EVP_MD_fetch (int *,int ,char*) ;
 int EVP_MD_free (int *) ;
 int * EVP_sha1 () ;
 scalar_t__ MD5_DIGEST_LENGTH ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int OSSL_DIGEST_NAME_MD5 ;
 int SHA_DIGEST_LENGTH ;
 int SSL3_RANDOM_SIZE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL3_GENERATE_KEY_BLOCK ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 unsigned char* os_toascii ;

__attribute__((used)) static int ssl3_generate_key_block(SSL *s, unsigned char *km, int num)
{
    EVP_MD *md5;
    EVP_MD_CTX *m5;
    EVP_MD_CTX *s1;
    unsigned char buf[16], smd[SHA_DIGEST_LENGTH];
    unsigned char c = 'A';
    unsigned int i, j, k;
    int ret = 0;




    k = 0;
    md5 = EVP_MD_fetch(((void*)0), OSSL_DIGEST_NAME_MD5, "-fips");
    m5 = EVP_MD_CTX_new();
    s1 = EVP_MD_CTX_new();
    if (md5 == ((void*)0) || m5 == ((void*)0) || s1 == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_GENERATE_KEY_BLOCK,
                 ERR_R_MALLOC_FAILURE);
        goto err;
    }
    for (i = 0; (int)i < num; i += MD5_DIGEST_LENGTH) {
        k++;
        if (k > sizeof(buf)) {

            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_GENERATE_KEY_BLOCK,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }

        for (j = 0; j < k; j++)
            buf[j] = c;
        c++;
        if (!EVP_DigestInit_ex(s1, EVP_sha1(), ((void*)0))
            || !EVP_DigestUpdate(s1, buf, k)
            || !EVP_DigestUpdate(s1, s->session->master_key,
                                 s->session->master_key_length)
            || !EVP_DigestUpdate(s1, s->s3.server_random, SSL3_RANDOM_SIZE)
            || !EVP_DigestUpdate(s1, s->s3.client_random, SSL3_RANDOM_SIZE)
            || !EVP_DigestFinal_ex(s1, smd, ((void*)0))
            || !EVP_DigestInit_ex(m5, md5, ((void*)0))
            || !EVP_DigestUpdate(m5, s->session->master_key,
                                 s->session->master_key_length)
            || !EVP_DigestUpdate(m5, smd, SHA_DIGEST_LENGTH)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_GENERATE_KEY_BLOCK,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
        if ((int)(i + MD5_DIGEST_LENGTH) > num) {
            if (!EVP_DigestFinal_ex(m5, smd, ((void*)0))) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_SSL3_GENERATE_KEY_BLOCK, ERR_R_INTERNAL_ERROR);
                goto err;
            }
            memcpy(km, smd, (num - i));
        } else {
            if (!EVP_DigestFinal_ex(m5, km, ((void*)0))) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_SSL3_GENERATE_KEY_BLOCK, ERR_R_INTERNAL_ERROR);
                goto err;
            }
        }

        km += MD5_DIGEST_LENGTH;
    }
    OPENSSL_cleanse(smd, sizeof(smd));
    ret = 1;
 err:
    EVP_MD_CTX_free(m5);
    EVP_MD_CTX_free(s1);
    EVP_MD_free(md5);
    return ret;
}
