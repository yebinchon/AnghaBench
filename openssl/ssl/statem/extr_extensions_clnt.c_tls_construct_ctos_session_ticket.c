
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int X509 ;
typedef int WPACKET ;
struct TYPE_10__ {TYPE_1__* session_ticket; } ;
struct TYPE_13__ {TYPE_4__* session; TYPE_2__ ext; int new_session; } ;
struct TYPE_11__ {size_t ticklen; int * tick; } ;
struct TYPE_12__ {scalar_t__ ssl_version; TYPE_3__ ext; } ;
struct TYPE_9__ {size_t length; int * data; } ;
typedef TYPE_5__ SSL ;
typedef int EXT_RETURN ;


 int ERR_R_INTERNAL_ERROR ;
 int EXT_RETURN_FAIL ;
 int EXT_RETURN_NOT_SENT ;
 int EXT_RETURN_SENT ;
 int * OPENSSL_malloc (size_t) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_CTOS_SESSION_TICKET ;
 int SSLfatal (TYPE_5__*,int ,int ,int ) ;
 scalar_t__ TLS1_3_VERSION ;
 int TLSEXT_TYPE_session_ticket ;
 int WPACKET_put_bytes_u16 (int *,int ) ;
 int WPACKET_sub_memcpy_u16 (int *,int *,size_t) ;
 int memcpy (int *,int *,size_t) ;
 int tls_use_ticket (TYPE_5__*) ;

EXT_RETURN tls_construct_ctos_session_ticket(SSL *s, WPACKET *pkt,
                                             unsigned int context, X509 *x,
                                             size_t chainidx)
{
    size_t ticklen;

    if (!tls_use_ticket(s))
        return EXT_RETURN_NOT_SENT;

    if (!s->new_session && s->session != ((void*)0)
            && s->session->ext.tick != ((void*)0)
            && s->session->ssl_version != TLS1_3_VERSION) {
        ticklen = s->session->ext.ticklen;
    } else if (s->session && s->ext.session_ticket != ((void*)0)
               && s->ext.session_ticket->data != ((void*)0)) {
        ticklen = s->ext.session_ticket->length;
        s->session->ext.tick = OPENSSL_malloc(ticklen);
        if (s->session->ext.tick == ((void*)0)) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_SESSION_TICKET,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
        memcpy(s->session->ext.tick,
               s->ext.session_ticket->data, ticklen);
        s->session->ext.ticklen = ticklen;
    } else {
        ticklen = 0;
    }

    if (ticklen == 0 && s->ext.session_ticket != ((void*)0) &&
            s->ext.session_ticket->data == ((void*)0))
        return EXT_RETURN_NOT_SENT;

    if (!WPACKET_put_bytes_u16(pkt, TLSEXT_TYPE_session_ticket)
            || !WPACKET_sub_memcpy_u16(pkt, s->session->ext.tick, ticklen)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_SESSION_TICKET, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}
