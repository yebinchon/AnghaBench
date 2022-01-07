
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_4__ {scalar_t__ early_data_state; } ;
typedef TYPE_1__ SSL ;


 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 int SSL_AD_INTERNAL_ERROR ;
 scalar_t__ SSL_EARLY_DATA_FINISHED_WRITING ;
 scalar_t__ SSL_EARLY_DATA_WRITE_RETRY ;
 int SSL_F_TLS_CONSTRUCT_END_OF_EARLY_DATA ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;

int tls_construct_end_of_early_data(SSL *s, WPACKET *pkt)
{
    if (s->early_data_state != SSL_EARLY_DATA_WRITE_RETRY
            && s->early_data_state != SSL_EARLY_DATA_FINISHED_WRITING) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_END_OF_EARLY_DATA,
                 ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }

    s->early_data_state = SSL_EARLY_DATA_FINISHED_WRITING;
    return 1;
}
