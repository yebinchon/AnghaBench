
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uc ;
struct TYPE_2__ {int extension_error; int * biodebug; int * servername; } ;
typedef TYPE_1__ tlsextctx ;
typedef int SSL ;


 int BIO_printf (int *,char*,...) ;
 int SSL_TLSEXT_ERR_NOACK ;
 int SSL_TLSEXT_ERR_OK ;
 char* SSL_get_servername (int *,int ) ;
 int SSL_set_SSL_CTX (int *,int *) ;
 int TLSEXT_NAMETYPE_host_name ;
 int * ctx2 ;
 scalar_t__ isprint (unsigned char) ;
 scalar_t__ strcasecmp (char const*,int *) ;

__attribute__((used)) static int ssl_servername_cb(SSL *s, int *ad, void *arg)
{
    tlsextctx *p = (tlsextctx *) arg;
    const char *servername = SSL_get_servername(s, TLSEXT_NAMETYPE_host_name);

    if (servername != ((void*)0) && p->biodebug != ((void*)0)) {
        const char *cp = servername;
        unsigned char uc;

        BIO_printf(p->biodebug, "Hostname in TLS extension: \"");
        while ((uc = *cp++) != 0)
            BIO_printf(p->biodebug,
                       (((uc) & ~127) == 0) && isprint(uc) ? "%c" : "\\x%02x", uc);
        BIO_printf(p->biodebug, "\"\n");
    }

    if (p->servername == ((void*)0))
        return SSL_TLSEXT_ERR_NOACK;

    if (servername != ((void*)0)) {
        if (strcasecmp(servername, p->servername))
            return p->extension_error;
        if (ctx2 != ((void*)0)) {
            BIO_printf(p->biodebug, "Switching server context.\n");
            SSL_set_SSL_CTX(s, ctx2);
        }
    }
    return SSL_TLSEXT_ERR_OK;
}
