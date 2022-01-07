
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_10__ {scalar_t__ early_data_ok; int * hostname; } ;
struct TYPE_11__ {int servername_done; TYPE_3__ ext; TYPE_2__* session; scalar_t__ hit; } ;
struct TYPE_8__ {int * hostname; } ;
struct TYPE_9__ {TYPE_1__ ext; } ;
typedef TYPE_4__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int OPENSSL_free (int *) ;
 int PACKET_as_length_prefixed_2 (int *,int *) ;
 scalar_t__ PACKET_contains_zero_byte (int *) ;
 scalar_t__ PACKET_equal (int *,int *,int ) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 scalar_t__ PACKET_remaining (int *) ;
 int PACKET_strndup (int *,int **) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_UNRECOGNIZED_NAME ;
 int SSL_F_TLS_PARSE_CTOS_SERVER_NAME ;
 scalar_t__ SSL_IS_TLS13 (TYPE_4__*) ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_4__*,int ,int ,int ) ;
 scalar_t__ TLSEXT_MAXLEN_host_name ;
 unsigned int TLSEXT_NAMETYPE_host_name ;
 int strlen (int *) ;

int tls_parse_ctos_server_name(SSL *s, PACKET *pkt, unsigned int context,
                               X509 *x, size_t chainidx)
{
    unsigned int servname_type;
    PACKET sni, hostname;

    if (!PACKET_as_length_prefixed_2(pkt, &sni)

        || PACKET_remaining(&sni) == 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_SERVER_NAME,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }
    if (!PACKET_get_1(&sni, &servname_type)
        || servname_type != TLSEXT_NAMETYPE_host_name
        || !PACKET_as_length_prefixed_2(&sni, &hostname)) {
        SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_CTOS_SERVER_NAME,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }

    if (!s->hit || SSL_IS_TLS13(s)) {
        if (PACKET_remaining(&hostname) > TLSEXT_MAXLEN_host_name) {
            SSLfatal(s, SSL_AD_UNRECOGNIZED_NAME,
                     SSL_F_TLS_PARSE_CTOS_SERVER_NAME,
                     SSL_R_BAD_EXTENSION);
            return 0;
        }

        if (PACKET_contains_zero_byte(&hostname)) {
            SSLfatal(s, SSL_AD_UNRECOGNIZED_NAME,
                     SSL_F_TLS_PARSE_CTOS_SERVER_NAME,
                     SSL_R_BAD_EXTENSION);
            return 0;
        }





        OPENSSL_free(s->ext.hostname);
        s->ext.hostname = ((void*)0);
        if (!PACKET_strndup(&hostname, &s->ext.hostname)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_CTOS_SERVER_NAME,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }

        s->servername_done = 1;
    }
    if (s->hit) {




        s->servername_done = (s->session->ext.hostname != ((void*)0))
            && PACKET_equal(&hostname, s->session->ext.hostname,
                            strlen(s->session->ext.hostname));

        if (!s->servername_done && s->session->ext.hostname != ((void*)0))
            s->ext.early_data_ok = 0;
    }

    return 1;
}
