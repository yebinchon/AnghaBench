
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_4__ {unsigned int version; } ;
typedef TYPE_1__ SSL ;
typedef int PACKET ;


 int PACKET_get_net_2 (int *,unsigned int*) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 unsigned int SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST ;
 int SSL_F_TLS_PARSE_STOC_SUPPORTED_VERSIONS ;
 int SSL_R_BAD_PROTOCOL_VERSION_NUMBER ;
 int SSL_R_LENGTH_MISMATCH ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;
 unsigned int TLS1_3_VERSION ;

int tls_parse_stoc_supported_versions(SSL *s, PACKET *pkt, unsigned int context,
                                      X509 *x, size_t chainidx)
{
    unsigned int version;

    if (!PACKET_get_net_2(pkt, &version)
            || PACKET_remaining(pkt) != 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_STOC_SUPPORTED_VERSIONS,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }





    if (version != TLS1_3_VERSION) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                 SSL_F_TLS_PARSE_STOC_SUPPORTED_VERSIONS,
                 SSL_R_BAD_PROTOCOL_VERSION_NUMBER);
        return 0;
    }


    if (context == SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST)
        return 1;


    s->version = version;

    return 1;
}
