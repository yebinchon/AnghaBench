
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_4__ {int key_update; } ;
typedef TYPE_1__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CONSTRUCT_KEY_UPDATE ;
 int SSL_KEY_UPDATE_NONE ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;
 int WPACKET_put_bytes_u8 (int *,int ) ;

int tls_construct_key_update(SSL *s, WPACKET *pkt)
{
    if (!WPACKET_put_bytes_u8(pkt, s->key_update)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_KEY_UPDATE,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    s->key_update = SSL_KEY_UPDATE_NONE;
    return 1;
}
