
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ack; } ;
typedef TYPE_1__ tlsextctx ;
typedef int SSL ;


 int BIO_printf (int ,char*) ;
 int SSL_TLSEXT_ERR_OK ;
 char* SSL_get_servername (int *,int ) ;
 int SSL_get_servername_type (int *) ;
 int SSL_session_reused (int *) ;
 int TLSEXT_NAMETYPE_host_name ;
 int bio_err ;

__attribute__((used)) static int ssl_servername_cb(SSL *s, int *ad, void *arg)
{
    tlsextctx *p = (tlsextctx *) arg;
    const char *hn = SSL_get_servername(s, TLSEXT_NAMETYPE_host_name);
    if (SSL_get_servername_type(s) != -1)
        p->ack = !SSL_session_reused(s) && hn != ((void*)0);
    else
        BIO_printf(bio_err, "Can't use SSL_get_servername\n");

    return SSL_TLSEXT_ERR_OK;
}
