
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_6__ {int session_ticket_cb_arg; int (* session_ticket_cb ) (TYPE_2__*,int ,int ,int ) ;} ;
struct TYPE_7__ {TYPE_1__ ext; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 int ERR_R_INTERNAL_ERROR ;
 int PACKET_data (int *) ;
 int PACKET_remaining (int *) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_PARSE_CTOS_SESSION_TICKET ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int stub1 (TYPE_2__*,int ,int ,int ) ;

int tls_parse_ctos_session_ticket(SSL *s, PACKET *pkt, unsigned int context,
                                  X509 *x, size_t chainidx)
{
    if (s->ext.session_ticket_cb &&
            !s->ext.session_ticket_cb(s, PACKET_data(pkt),
                                  PACKET_remaining(pkt),
                                  s->ext.session_ticket_cb_arg)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_PARSE_CTOS_SESSION_TICKET, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}
