
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
typedef int WPACKET ;
struct TYPE_5__ {int previous_server_finished_len; int previous_server_finished; int previous_client_finished_len; int previous_client_finished; int send_connection_binding; } ;
struct TYPE_6__ {TYPE_1__ s3; } ;
typedef TYPE_2__ SSL ;
typedef int EXT_RETURN ;


 int ERR_R_INTERNAL_ERROR ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_STOC_RENEGOTIATE ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int TLSEXT_TYPE_renegotiate ;
 int WPACKET_close (int *) ;
 int WPACKET_memcpy (int *,int ,int ) ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_start_sub_packet_u16 (int *) ;
 int WPACKET_start_sub_packet_u8 (int *) ;

EXT_RETURN tls_construct_stoc_renegotiate(SSL *s, WPACKET *pkt,
                                          unsigned int context, X509 *x,
                                          size_t chainidx)
{
    if (!s->s3.send_connection_binding)
        return EXT_RETURN_NOT_SENT;


    if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_renegotiate)
            || !WPACKET_start_sub_packet_u16(pkt)
            || !WPACKET_start_sub_packet_u8(pkt)
            || !WPACKET_memcpy(pkt, s->s3.previous_client_finished,
                               s->s3.previous_client_finished_len)
            || !WPACKET_memcpy(pkt, s->s3.previous_server_finished,
                               s->s3.previous_server_finished_len)
            || !WPACKET_close(pkt)
            || !WPACKET_close(pkt)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_STOC_RENEGOTIATE,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}
