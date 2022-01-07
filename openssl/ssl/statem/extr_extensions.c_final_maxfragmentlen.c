
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ max_send_fragment; scalar_t__ session; scalar_t__ hit; scalar_t__ server; } ;
typedef TYPE_1__ SSL ;


 scalar_t__ GET_MAX_FRAGMENT_LENGTH (scalar_t__) ;
 int SSL_AD_MISSING_EXTENSION ;
 int SSL_F_FINAL_MAXFRAGMENTLEN ;
 int SSL_R_BAD_EXTENSION ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ USE_MAX_FRAGMENT_LENGTH_EXT (scalar_t__) ;
 int ssl3_setup_buffers (TYPE_1__*) ;

__attribute__((used)) static int final_maxfragmentlen(SSL *s, unsigned int context, int sent)
{




    if (s->server && s->hit && USE_MAX_FRAGMENT_LENGTH_EXT(s->session)
            && !sent ) {
        SSLfatal(s, SSL_AD_MISSING_EXTENSION, SSL_F_FINAL_MAXFRAGMENTLEN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }


    if (s->session && USE_MAX_FRAGMENT_LENGTH_EXT(s->session)
            && s->max_send_fragment < GET_MAX_FRAGMENT_LENGTH(s->session))

        if (!ssl3_setup_buffers(s)) {

            return 0;
        }

    return 1;
}
