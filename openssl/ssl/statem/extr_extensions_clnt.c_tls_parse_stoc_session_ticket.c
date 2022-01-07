
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_7__ {int ticket_expected; int session_ticket_cb_arg; int (* session_ticket_cb ) (TYPE_2__*,int ,scalar_t__,int ) ;} ;
struct TYPE_8__ {TYPE_1__ ext; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 int PACKET_data (int *) ;
 scalar_t__ PACKET_remaining (int *) ;
 int SSL_AD_DECODE_ERROR ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_UNSUPPORTED_EXTENSION ;
 int SSL_F_TLS_PARSE_STOC_SESSION_TICKET ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int stub1 (TYPE_2__*,int ,scalar_t__,int ) ;
 int tls_use_ticket (TYPE_2__*) ;

int tls_parse_stoc_session_ticket(SSL *s, PACKET *pkt, unsigned int context,
                                  X509 *x, size_t chainidx)
{
    if (s->ext.session_ticket_cb != ((void*)0) &&
        !s->ext.session_ticket_cb(s, PACKET_data(pkt),
                              PACKET_remaining(pkt),
                              s->ext.session_ticket_cb_arg)) {
        SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE,
                 SSL_F_TLS_PARSE_STOC_SESSION_TICKET, SSL_R_BAD_EXTENSION);
        return 0;
    }

    if (!tls_use_ticket(s)) {
        SSLfatal(s, SSL_AD_UNSUPPORTED_EXTENSION,
                 SSL_F_TLS_PARSE_STOC_SESSION_TICKET, SSL_R_BAD_EXTENSION);
        return 0;
    }
    if (PACKET_remaining(pkt) > 0) {
        SSLfatal(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_STOC_SESSION_TICKET, SSL_R_BAD_EXTENSION);
        return 0;
    }

    s->ext.ticket_expected = 1;

    return 1;
}
