
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int SSL_TLSEXT_ERR_NOACK ;
 int SSL_TLSEXT_ERR_OK ;
 char* SSL_get_servername (int *,int ) ;
 int TLSEXT_NAMETYPE_host_name ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int hostname_cb(SSL *s, int *al, void *arg)
{
    const char *hostname = SSL_get_servername(s, TLSEXT_NAMETYPE_host_name);

    if (hostname != ((void*)0) && strcmp(hostname, "goodhost") == 0)
        return SSL_TLSEXT_ERR_OK;

    return SSL_TLSEXT_ERR_NOACK;
}
