
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WPACKET ;
struct TYPE_9__ {TYPE_1__* d1; TYPE_2__* ctx; } ;
struct TYPE_8__ {scalar_t__ (* app_gen_cookie_cb ) (TYPE_3__*,int ,unsigned int*) ;} ;
struct TYPE_7__ {unsigned int cookie_len; int cookie; } ;
typedef TYPE_3__ SSL ;


 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_NO_ALERT ;
 int SSL_F_DTLS_CONSTRUCT_HELLO_VERIFY_REQUEST ;
 int SSL_R_COOKIE_GEN_CALLBACK_FAILURE ;
 int SSLfatal (TYPE_3__*,int ,int ,int ) ;
 int dtls_raw_hello_verify_request (int *,int ,unsigned int) ;
 scalar_t__ stub1 (TYPE_3__*,int ,unsigned int*) ;

int dtls_construct_hello_verify_request(SSL *s, WPACKET *pkt)
{
    unsigned int cookie_leni;
    if (s->ctx->app_gen_cookie_cb == ((void*)0) ||
        s->ctx->app_gen_cookie_cb(s, s->d1->cookie,
                                  &cookie_leni) == 0 ||
        cookie_leni > 255) {
        SSLfatal(s, SSL_AD_NO_ALERT, SSL_F_DTLS_CONSTRUCT_HELLO_VERIFY_REQUEST,
                 SSL_R_COOKIE_GEN_CALLBACK_FAILURE);
        return 0;
    }
    s->d1->cookie_len = cookie_leni;

    if (!dtls_raw_hello_verify_request(pkt, s->d1->cookie,
                                              s->d1->cookie_len)) {
        SSLfatal(s, SSL_AD_NO_ALERT, SSL_F_DTLS_CONSTRUCT_HELLO_VERIFY_REQUEST,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}
