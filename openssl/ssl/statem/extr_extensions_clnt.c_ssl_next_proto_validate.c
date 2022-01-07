
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int PACKET ;


 int PACKET_get_length_prefixed_1 (int *,int *) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_F_SSL_NEXT_PROTO_VALIDATE ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (int *,int ,int ,int ) ;

__attribute__((used)) static int ssl_next_proto_validate(SSL *s, PACKET *pkt)
{
    PACKET tmp_protocol;

    while (PACKET_remaining(pkt)) {
        if (!PACKET_get_length_prefixed_1(pkt, &tmp_protocol)
            || PACKET_remaining(&tmp_protocol) == 0) {
            SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_SSL_NEXT_PROTO_VALIDATE,
                     SSL_R_BAD_EXTENSION);
            return 0;
        }
    }

    return 1;
}
