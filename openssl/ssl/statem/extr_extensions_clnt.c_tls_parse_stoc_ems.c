
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_5__ {int flags; } ;
struct TYPE_7__ {int options; TYPE_2__* session; int hit; TYPE_1__ s3; } ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_3__ SSL ;
typedef int PACKET ;


 int SSL_OP_NO_EXTENDED_MASTER_SECRET ;
 int SSL_SESS_FLAG_EXTMS ;
 int TLS1_FLAGS_RECEIVED_EXTMS ;

int tls_parse_stoc_ems(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                       size_t chainidx)
{
    if (s->options & SSL_OP_NO_EXTENDED_MASTER_SECRET)
        return 1;
    s->s3.flags |= TLS1_FLAGS_RECEIVED_EXTMS;
    if (!s->hit)
        s->session->flags |= SSL_SESS_FLAG_EXTMS;

    return 1;
}
