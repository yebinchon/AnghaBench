
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int BIO_FLAGS_READ ;
 int BIO_set_flags (int ,int ) ;
 int ERR_R_INTERNAL_ERROR ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_DTLS1_READ_FAILED ;
 int SSL_get_rbio (int *) ;
 int SSL_in_init (int *) ;
 int SSLfatal (int *,int ,int ,int ) ;
 int dtls1_handle_timeout (int *) ;
 int dtls1_is_timer_expired (int *) ;
 scalar_t__ ossl_statem_in_error (int *) ;

int dtls1_read_failed(SSL *s, int code)
{
    if (code > 0) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_DTLS1_READ_FAILED, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (!dtls1_is_timer_expired(s) || ossl_statem_in_error(s)) {




        return code;
    }

    if (!SSL_in_init(s))
    {
        BIO_set_flags(SSL_get_rbio(s), BIO_FLAGS_READ);
        return code;
    }

    return dtls1_handle_timeout(s);
}
