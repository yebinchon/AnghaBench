
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ hand_state; } ;
struct TYPE_8__ {TYPE_2__ statem; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ OSSL_STATEM ;


 int SSL3_RT_CHANGE_CIPHER_SPEC ;
 scalar_t__ SSL_IS_DTLS (TYPE_1__*) ;
 scalar_t__ TLS_ST_CW_CHANGE ;
 scalar_t__ TLS_ST_SW_CHANGE ;
 int dtls1_do_write (TYPE_1__*,int ) ;
 int ssl3_do_write (TYPE_1__*,int ) ;
 int ssl_do_write (TYPE_1__*) ;

__attribute__((used)) static int statem_do_write(SSL *s)
{
    OSSL_STATEM *st = &s->statem;

    if (st->hand_state == TLS_ST_CW_CHANGE
        || st->hand_state == TLS_ST_SW_CHANGE) {
        if (SSL_IS_DTLS(s))
            return dtls1_do_write(s, SSL3_RT_CHANGE_CIPHER_SPEC);
        else
            return ssl3_do_write(s, SSL3_RT_CHANGE_CIPHER_SPEC);
    } else {
        return ssl_do_write(s);
    }
}
