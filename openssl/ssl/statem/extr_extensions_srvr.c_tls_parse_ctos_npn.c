
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_5__ {int npn_seen; } ;
struct TYPE_6__ {TYPE_1__ s3; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 scalar_t__ SSL_IS_FIRST_HANDSHAKE (TYPE_2__*) ;

int tls_parse_ctos_npn(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                       size_t chainidx)
{




    if (SSL_IS_FIRST_HANDSHAKE(s))
        s->s3.npn_seen = 1;

    return 1;
}
