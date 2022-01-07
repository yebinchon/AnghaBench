
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int label_prefix ;
typedef int hkdflabel ;
typedef int WPACKET ;
typedef int SSL ;
typedef int OSSL_PARAM ;
typedef int EVP_MD ;
typedef int EVP_KDF_CTX ;
typedef int EVP_KDF ;


 int ERR_R_INTERNAL_ERROR ;
 int EVP_KDF_CTX_free (int *) ;
 int * EVP_KDF_CTX_new (int *) ;
 scalar_t__ EVP_KDF_CTX_set_params (int *,int *) ;
 scalar_t__ EVP_KDF_derive (int *,unsigned char*,size_t) ;
 int * EVP_KDF_fetch (int *,int ,int *) ;
 int EVP_KDF_free (int *) ;
 int EVP_MAX_MD_SIZE ;
 char* EVP_MD_name (int const*) ;
 size_t EVP_MD_size (int const*) ;
 int EVP_PKEY_HKDEF_MODE_EXPAND_ONLY ;
 int OSSL_KDF_NAME_HKDF ;
 int OSSL_KDF_PARAM_DIGEST ;
 int OSSL_KDF_PARAM_INFO ;
 int OSSL_KDF_PARAM_KEY ;
 int OSSL_KDF_PARAM_MODE ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_int (int ,int*) ;
 void* OSSL_PARAM_construct_octet_string (int ,unsigned char*,size_t) ;
 int OSSL_PARAM_construct_utf8_string (int ,char*,scalar_t__) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS13_HKDF_EXPAND ;
 int SSL_R_TLS_ILLEGAL_EXPORTER_LABEL ;
 int SSLerr (int ,int ) ;
 int SSLfatal (int *,int ,int ,int ) ;
 int TLS13_MAX_LABEL_LEN ;
 int WPACKET_cleanup (int *) ;
 int WPACKET_close (int *) ;
 int WPACKET_finish (int *) ;
 int WPACKET_get_total_written (int *,size_t*) ;
 int WPACKET_init_static_len (int *,unsigned char*,int,int ) ;
 int WPACKET_memcpy (int *,unsigned char const*,size_t) ;
 int WPACKET_put_bytes_u16 (int *,size_t) ;
 int WPACKET_start_sub_packet_u8 (int *) ;
 int WPACKET_sub_memcpy_u8 (int *,unsigned char const*,size_t) ;
 scalar_t__ strlen (char const*) ;

int tls13_hkdf_expand(SSL *s, const EVP_MD *md, const unsigned char *secret,
                             const unsigned char *label, size_t labellen,
                             const unsigned char *data, size_t datalen,
                             unsigned char *out, size_t outlen, int fatal)
{



    static const unsigned char label_prefix[] = "tls13 ";

    EVP_KDF *kdf = EVP_KDF_fetch(((void*)0), OSSL_KDF_NAME_HKDF, ((void*)0));
    EVP_KDF_CTX *kctx;
    OSSL_PARAM params[5], *p = params;
    int mode = EVP_PKEY_HKDEF_MODE_EXPAND_ONLY;
    const char *mdname = EVP_MD_name(md);
    int ret;
    size_t hkdflabellen;
    size_t hashlen;





    unsigned char hkdflabel[sizeof(uint16_t) + sizeof(uint8_t) +
                            + (sizeof(label_prefix) - 1) + TLS13_MAX_LABEL_LEN
                            + 1 + EVP_MAX_MD_SIZE];
    WPACKET pkt;

    kctx = EVP_KDF_CTX_new(kdf);
    EVP_KDF_free(kdf);
    if (kctx == ((void*)0))
        return 0;

    if (labellen > TLS13_MAX_LABEL_LEN) {
        if (fatal) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_HKDF_EXPAND,
                     ERR_R_INTERNAL_ERROR);
        } else {




            SSLerr(SSL_F_TLS13_HKDF_EXPAND, SSL_R_TLS_ILLEGAL_EXPORTER_LABEL);
        }
        EVP_KDF_CTX_free(kctx);
        return 0;
    }

    hashlen = EVP_MD_size(md);

    if (!WPACKET_init_static_len(&pkt, hkdflabel, sizeof(hkdflabel), 0)
            || !WPACKET_put_bytes_u16(&pkt, outlen)
            || !WPACKET_start_sub_packet_u8(&pkt)
            || !WPACKET_memcpy(&pkt, label_prefix, sizeof(label_prefix) - 1)
            || !WPACKET_memcpy(&pkt, label, labellen)
            || !WPACKET_close(&pkt)
            || !WPACKET_sub_memcpy_u8(&pkt, data, (data == ((void*)0)) ? 0 : datalen)
            || !WPACKET_get_total_written(&pkt, &hkdflabellen)
            || !WPACKET_finish(&pkt)) {
        EVP_KDF_CTX_free(kctx);
        WPACKET_cleanup(&pkt);
        if (fatal)
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_HKDF_EXPAND,
                     ERR_R_INTERNAL_ERROR);
        else
            SSLerr(SSL_F_TLS13_HKDF_EXPAND, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    *p++ = OSSL_PARAM_construct_int(OSSL_KDF_PARAM_MODE, &mode);
    *p++ = OSSL_PARAM_construct_utf8_string(OSSL_KDF_PARAM_DIGEST,
                                            (char *)mdname, strlen(mdname) + 1);
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_KEY,
                                             (unsigned char *)secret, hashlen);
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_INFO,
                                             hkdflabel, hkdflabellen);
    *p++ = OSSL_PARAM_construct_end();

    ret = EVP_KDF_CTX_set_params(kctx, params) <= 0
        || EVP_KDF_derive(kctx, out, outlen) <= 0;

    EVP_KDF_CTX_free(kctx);

    if (ret != 0) {
        if (fatal)
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_HKDF_EXPAND,
                     ERR_R_INTERNAL_ERROR);
        else
            SSLerr(SSL_F_TLS13_HKDF_EXPAND, ERR_R_INTERNAL_ERROR);
    }

    return ret == 0;
}
