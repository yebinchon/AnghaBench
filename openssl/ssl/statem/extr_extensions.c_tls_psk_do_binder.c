
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int resumption_label ;
typedef int finishedkey ;
typedef int external_label ;
typedef int binderkey ;
struct TYPE_16__ {int handshake_buffer; } ;
struct TYPE_18__ {scalar_t__ early_data_state; scalar_t__ hello_retry_request; scalar_t__ server; TYPE_4__ s3; scalar_t__ early_secret; TYPE_2__* session; } ;
struct TYPE_15__ {scalar_t__ max_early_data; } ;
struct TYPE_17__ {int master_key_length; int master_key; scalar_t__ early_secret; TYPE_3__ ext; } ;
struct TYPE_13__ {scalar_t__ max_early_data; } ;
struct TYPE_14__ {TYPE_1__ ext; } ;
typedef TYPE_5__ SSL_SESSION ;
typedef TYPE_6__ SSL ;
typedef int PACKET ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 long BIO_get_mem_data (int ,void**) ;
 scalar_t__ CRYPTO_memcmp (unsigned char const*,unsigned char*,size_t) ;
 int ERR_R_INTERNAL_ERROR ;
 scalar_t__ EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 scalar_t__ EVP_DigestInit_ex (int *,int const*,int *) ;
 scalar_t__ EVP_DigestSignFinal (int *,unsigned char*,size_t*) ;
 scalar_t__ EVP_DigestSignInit (int *,int *,int const*,int *,int *) ;
 scalar_t__ EVP_DigestSignUpdate (int *,unsigned char*,size_t) ;
 scalar_t__ EVP_DigestUpdate (int *,unsigned char const*,size_t) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_size (int const*) ;
 int EVP_PKEY_HMAC ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new_raw_private_key (int ,int *,unsigned char*,size_t) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int PACKET_buf_init (int *,void*,size_t) ;
 int PACKET_forward (int *,int) ;
 int PACKET_get_length_prefixed_3 (int *,int *) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 scalar_t__ SSL_EARLY_DATA_CONNECTING ;
 int SSL_F_TLS_PSK_DO_BINDER ;
 scalar_t__ SSL_HRR_PENDING ;
 int SSL_R_BAD_HANDSHAKE_LENGTH ;
 int SSL_R_BINDER_DOES_NOT_VERIFY ;
 int SSLfatal (TYPE_6__*,int ,int ,int ) ;
 int ossl_assert (int) ;
 int tls13_derive_finishedkey (TYPE_6__*,int const*,unsigned char*,unsigned char*,size_t) ;
 int tls13_generate_secret (TYPE_6__*,int const*,int *,int ,int ,unsigned char*) ;
 int tls13_hkdf_expand (TYPE_6__*,int const*,unsigned char*,unsigned char const*,size_t,unsigned char*,size_t,unsigned char*,size_t,int) ;

int tls_psk_do_binder(SSL *s, const EVP_MD *md, const unsigned char *msgstart,
                      size_t binderoffset, const unsigned char *binderin,
                      unsigned char *binderout, SSL_SESSION *sess, int sign,
                      int external)
{
    EVP_PKEY *mackey = ((void*)0);
    EVP_MD_CTX *mctx = ((void*)0);
    unsigned char hash[EVP_MAX_MD_SIZE], binderkey[EVP_MAX_MD_SIZE];
    unsigned char finishedkey[EVP_MAX_MD_SIZE], tmpbinder[EVP_MAX_MD_SIZE];
    unsigned char *early_secret;




    static const unsigned char resumption_label[] = "res binder";
    static const unsigned char external_label[] = "ext binder";

    const unsigned char *label;
    size_t bindersize, labelsize, hashsize;
    int hashsizei = EVP_MD_size(md);
    int ret = -1;
    int usepskfored = 0;


    if (!ossl_assert(hashsizei >= 0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }
    hashsize = (size_t)hashsizei;

    if (external
            && s->early_data_state == SSL_EARLY_DATA_CONNECTING
            && s->session->ext.max_early_data == 0
            && sess->ext.max_early_data > 0)
        usepskfored = 1;

    if (external) {
        label = external_label;
        labelsize = sizeof(external_label) - 1;
    } else {
        label = resumption_label;
        labelsize = sizeof(resumption_label) - 1;
    }
    if (s->server || !external || usepskfored)
        early_secret = (unsigned char *)s->early_secret;
    else
        early_secret = (unsigned char *)sess->early_secret;

    if (!tls13_generate_secret(s, md, ((void*)0), sess->master_key,
                               sess->master_key_length, early_secret)) {

        goto err;
    }





    mctx = EVP_MD_CTX_new();
    if (mctx == ((void*)0)
            || EVP_DigestInit_ex(mctx, md, ((void*)0)) <= 0
            || EVP_DigestFinal_ex(mctx, hash, ((void*)0)) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }


    if (!tls13_hkdf_expand(s, md, early_secret, label, labelsize, hash,
                           hashsize, binderkey, hashsize, 1)) {

        goto err;
    }


    if (!tls13_derive_finishedkey(s, md, binderkey, finishedkey, hashsize)) {

        goto err;
    }

    if (EVP_DigestInit_ex(mctx, md, ((void*)0)) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }






    if (s->hello_retry_request == SSL_HRR_PENDING) {
        size_t hdatalen;
        long hdatalen_l;
        void *hdata;

        hdatalen = hdatalen_l =
            BIO_get_mem_data(s->s3.handshake_buffer, &hdata);
        if (hdatalen_l <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                     SSL_R_BAD_HANDSHAKE_LENGTH);
            goto err;
        }





        if (s->server) {
            PACKET hashprefix, msg;


            if (!PACKET_buf_init(&hashprefix, hdata, hdatalen)
                    || !PACKET_forward(&hashprefix, 1)
                    || !PACKET_get_length_prefixed_3(&hashprefix, &msg)
                    || !PACKET_forward(&hashprefix, 1)
                    || !PACKET_get_length_prefixed_3(&hashprefix, &msg)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                         ERR_R_INTERNAL_ERROR);
                goto err;
            }
            hdatalen -= PACKET_remaining(&hashprefix);
        }

        if (EVP_DigestUpdate(mctx, hdata, hdatalen) <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                     ERR_R_INTERNAL_ERROR);
            goto err;
        }
    }

    if (EVP_DigestUpdate(mctx, msgstart, binderoffset) <= 0
            || EVP_DigestFinal_ex(mctx, hash, ((void*)0)) <= 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    mackey = EVP_PKEY_new_raw_private_key(EVP_PKEY_HMAC, ((void*)0), finishedkey,
                                          hashsize);
    if (mackey == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (!sign)
        binderout = tmpbinder;

    bindersize = hashsize;
    if (EVP_DigestSignInit(mctx, ((void*)0), md, ((void*)0), mackey) <= 0
            || EVP_DigestSignUpdate(mctx, hash, hashsize) <= 0
            || EVP_DigestSignFinal(mctx, binderout, &bindersize) <= 0
            || bindersize != hashsize) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PSK_DO_BINDER,
                 ERR_R_INTERNAL_ERROR);
        goto err;
    }

    if (sign) {
        ret = 1;
    } else {

        ret = (CRYPTO_memcmp(binderin, binderout, hashsize) == 0);
        if (!ret)
            SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_TLS_PSK_DO_BINDER,
                     SSL_R_BINDER_DOES_NOT_VERIFY);
    }

 err:
    OPENSSL_cleanse(binderkey, sizeof(binderkey));
    OPENSSL_cleanse(finishedkey, sizeof(finishedkey));
    EVP_PKEY_free(mackey);
    EVP_MD_CTX_free(mctx);

    return ret;
}
