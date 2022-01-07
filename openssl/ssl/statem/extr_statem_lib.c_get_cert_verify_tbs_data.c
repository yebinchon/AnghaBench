
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int handshake_buffer; } ;
struct TYPE_8__ {scalar_t__ hand_state; } ;
struct TYPE_10__ {size_t cert_verify_hash_len; TYPE_2__ s3; int cert_verify_hash; TYPE_1__ statem; } ;
typedef TYPE_3__ SSL ;


 long BIO_get_mem_data (int ,void**) ;
 int ERR_R_INTERNAL_ERROR ;
 int EVP_MAX_MD_SIZE ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_GET_CERT_VERIFY_TBS_DATA ;
 scalar_t__ SSL_IS_TLS13 (TYPE_3__*) ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 size_t TLS13_TBS_PREAMBLE_SIZE ;
 int TLS13_TBS_START_SIZE ;
 scalar_t__ TLS_ST_CR_CERT_VRFY ;
 scalar_t__ TLS_ST_SR_CERT_VRFY ;
 scalar_t__ TLS_ST_SW_CERT_VRFY ;
 int memcpy (unsigned char*,int ,size_t) ;
 int memset (unsigned char*,int,int) ;
 int ssl_handshake_hash (TYPE_3__*,unsigned char*,int ,size_t*) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static int get_cert_verify_tbs_data(SSL *s, unsigned char *tls13tbs,
                                    void **hdata, size_t *hdatalen)
{
    static const char servercontext[] = "TLS 1.3, server CertificateVerify";
    static const char clientcontext[] = "TLS 1.3, client CertificateVerify";

    if (SSL_IS_TLS13(s)) {
        size_t hashlen;


        memset(tls13tbs, 32, TLS13_TBS_START_SIZE);

        if (s->statem.hand_state == TLS_ST_CR_CERT_VRFY
                 || s->statem.hand_state == TLS_ST_SW_CERT_VRFY)
            strcpy((char *)tls13tbs + TLS13_TBS_START_SIZE, servercontext);
        else
            strcpy((char *)tls13tbs + TLS13_TBS_START_SIZE, clientcontext);






        if (s->statem.hand_state == TLS_ST_CR_CERT_VRFY
                || s->statem.hand_state == TLS_ST_SR_CERT_VRFY) {
            memcpy(tls13tbs + TLS13_TBS_PREAMBLE_SIZE, s->cert_verify_hash,
                   s->cert_verify_hash_len);
            hashlen = s->cert_verify_hash_len;
        } else if (!ssl_handshake_hash(s, tls13tbs + TLS13_TBS_PREAMBLE_SIZE,
                                       EVP_MAX_MD_SIZE, &hashlen)) {

            return 0;
        }

        *hdata = tls13tbs;
        *hdatalen = TLS13_TBS_PREAMBLE_SIZE + hashlen;
    } else {
        size_t retlen;
        long retlen_l;

        retlen = retlen_l = BIO_get_mem_data(s->s3.handshake_buffer, hdata);
        if (retlen_l <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_GET_CERT_VERIFY_TBS_DATA,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
        *hdatalen = retlen;
    }

    return 1;
}
