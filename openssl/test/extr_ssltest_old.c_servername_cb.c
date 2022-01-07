
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int BIO_printf (int ,char*) ;
 int SSL_TLSEXT_ERR_NOACK ;
 int SSL_TLSEXT_ERR_OK ;
 char* SSL_get_servername (int *,int ) ;
 int SSL_set_SSL_CTX (int *,int *) ;
 int TLSEXT_NAMETYPE_host_name ;
 int bio_stdout ;
 int * s_ctx2 ;
 int * sn_server2 ;
 int strcasecmp (char const*,int *) ;

__attribute__((used)) static int servername_cb(SSL *s, int *ad, void *arg)
{
    const char *servername = SSL_get_servername(s, TLSEXT_NAMETYPE_host_name);
    if (sn_server2 == ((void*)0)) {
        BIO_printf(bio_stdout, "Servername 2 is NULL\n");
        return SSL_TLSEXT_ERR_NOACK;
    }

    if (servername) {
        if (s_ctx2 != ((void*)0) && sn_server2 != ((void*)0) &&
            !strcasecmp(servername, sn_server2)) {
            BIO_printf(bio_stdout, "Switching server context.\n");
            SSL_set_SSL_CTX(s, s_ctx2);
        }
    }
    return SSL_TLSEXT_ERR_OK;
}
