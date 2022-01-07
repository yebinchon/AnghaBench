
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int cert_req; scalar_t__ ctype_len; int * ctype; scalar_t__* valid_flags; } ;
struct TYPE_14__ {TYPE_1__ tmp; } ;
struct TYPE_15__ {int shutdown; scalar_t__ post_handshake_auth; TYPE_2__ s3; scalar_t__ pha_context_len; int * pha_context; } ;
typedef TYPE_3__ SSL ;
typedef int RAW_EXTENSION ;
typedef int PACKET ;
typedef int MSG_PROCESS_RETURN ;


 int ERR_R_INTERNAL_ERROR ;
 int ERR_R_MALLOC_FAILURE ;
 int MSG_PROCESS_CONTINUE_PROCESSING ;
 int MSG_PROCESS_CONTINUE_READING ;
 int MSG_PROCESS_ERROR ;
 int MSG_PROCESS_FINISHED_READING ;
 int OPENSSL_free (int *) ;
 int PACKET_get_length_prefixed_1 (int *,int *) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 int PACKET_memdup (int *,int **,scalar_t__*) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_EXT_TLS1_3_CERTIFICATE_REQUEST ;
 int SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST ;
 scalar_t__ SSL_IS_TLS13 (TYPE_3__*) ;
 scalar_t__ SSL_PHA_REQUESTED ;
 size_t SSL_PKEY_NUM ;
 int SSL_R_BAD_LENGTH ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSL_R_SIGNATURE_ALGORITHMS_ERROR ;
 int SSL_SENT_SHUTDOWN ;
 scalar_t__ SSL_USE_SIGALGS (TYPE_3__*) ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int parse_ca_names (TYPE_3__*,int *) ;
 int tls1_process_sigalgs (TYPE_3__*) ;
 int tls1_save_sigalgs (TYPE_3__*,int *,int ) ;
 int tls_collect_extensions (TYPE_3__*,int *,int ,int **,int *,int) ;
 int tls_parse_all_extensions (TYPE_3__*,int ,int *,int *,int ,int) ;

MSG_PROCESS_RETURN tls_process_certificate_request(SSL *s, PACKET *pkt)
{
    size_t i;


    for (i = 0; i < SSL_PKEY_NUM; i++)
        s->s3.tmp.valid_flags[i] = 0;

    if (SSL_IS_TLS13(s)) {
        PACKET reqctx, extensions;
        RAW_EXTENSION *rawexts = ((void*)0);

        if ((s->shutdown & SSL_SENT_SHUTDOWN) != 0) {





            return MSG_PROCESS_FINISHED_READING;
        }


        OPENSSL_free(s->s3.tmp.ctype);
        s->s3.tmp.ctype = ((void*)0);
        s->s3.tmp.ctype_len = 0;
        OPENSSL_free(s->pha_context);
        s->pha_context = ((void*)0);

        if (!PACKET_get_length_prefixed_1(pkt, &reqctx) ||
            !PACKET_memdup(&reqctx, &s->pha_context, &s->pha_context_len)) {
            SSLfatal(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST,
                     SSL_R_LENGTH_MISMATCH);
            return MSG_PROCESS_ERROR;
        }

        if (!PACKET_get_length_prefixed_2(pkt, &extensions)) {
            SSLfatal(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST,
                     SSL_R_BAD_LENGTH);
            return MSG_PROCESS_ERROR;
        }
        if (!tls_collect_extensions(s, &extensions,
                                    SSL_EXT_TLS1_3_CERTIFICATE_REQUEST,
                                    &rawexts, ((void*)0), 1)
            || !tls_parse_all_extensions(s, SSL_EXT_TLS1_3_CERTIFICATE_REQUEST,
                                         rawexts, ((void*)0), 0, 1)) {

            OPENSSL_free(rawexts);
            return MSG_PROCESS_ERROR;
        }
        OPENSSL_free(rawexts);
        if (!tls1_process_sigalgs(s)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST,
                     SSL_R_BAD_LENGTH);
            return MSG_PROCESS_ERROR;
        }
    } else {
        PACKET ctypes;


        if (!PACKET_get_length_prefixed_1(pkt, &ctypes)) {
            SSLfatal(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST,
                     SSL_R_LENGTH_MISMATCH);
            return MSG_PROCESS_ERROR;
        }

        if (!PACKET_memdup(&ctypes, &s->s3.tmp.ctype, &s->s3.tmp.ctype_len)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST,
                     ERR_R_INTERNAL_ERROR);
            return MSG_PROCESS_ERROR;
        }

        if (SSL_USE_SIGALGS(s)) {
            PACKET sigalgs;

            if (!PACKET_get_length_prefixed_2(pkt, &sigalgs)) {
                SSLfatal(s, SSL_AD_DECODE_ERROR,
                         SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST,
                         SSL_R_LENGTH_MISMATCH);
                return MSG_PROCESS_ERROR;
            }





            if (!tls1_save_sigalgs(s, &sigalgs, 0)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST,
                         SSL_R_SIGNATURE_ALGORITHMS_ERROR);
                return MSG_PROCESS_ERROR;
            }
            if (!tls1_process_sigalgs(s)) {
                SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                         SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST,
                         ERR_R_MALLOC_FAILURE);
                return MSG_PROCESS_ERROR;
            }
        }


        if (!parse_ca_names(s, pkt)) {

            return MSG_PROCESS_ERROR;
        }
    }

    if (PACKET_remaining(pkt) != 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PROCESS_CERTIFICATE_REQUEST,
                 SSL_R_LENGTH_MISMATCH);
        return MSG_PROCESS_ERROR;
    }


    s->s3.tmp.cert_req = 1;
    if (SSL_IS_TLS13(s) && s->post_handshake_auth != SSL_PHA_REQUESTED)
        return MSG_PROCESS_CONTINUE_READING;

    return MSG_PROCESS_CONTINUE_PROCESSING;
}
