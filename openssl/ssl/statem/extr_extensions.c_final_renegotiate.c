
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int options; scalar_t__ renegotiate; int server; } ;
typedef TYPE_1__ SSL ;


 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_F_FINAL_RENEGOTIATE ;
 int SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION ;
 int SSL_OP_LEGACY_SERVER_CONNECT ;
 int SSL_R_UNSAFE_LEGACY_RENEGOTIATION_DISABLED ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static int final_renegotiate(SSL *s, unsigned int context, int sent)
{
    if (!s->server) {




        if (!(s->options & SSL_OP_LEGACY_SERVER_CONNECT)
                && !(s->options & SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION)
                && !sent) {
            SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_FINAL_RENEGOTIATE,
                     SSL_R_UNSAFE_LEGACY_RENEGOTIATION_DISABLED);
            return 0;
        }

        return 1;
    }


    if (s->renegotiate
            && !(s->options & SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION)
            && !sent) {
        SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_FINAL_RENEGOTIATE,
                 SSL_R_UNSAFE_LEGACY_RENEGOTIATION_DISABLED);
        return 0;
    }


    return 1;
}
