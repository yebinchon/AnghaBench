
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 unsigned char* OPENSSL_malloc (int) ;
 int SSL_TLSEXT_ERR_ALERT_FATAL ;
 int SSL_TLSEXT_ERR_OK ;
 int SSL_set_tlsext_status_ocsp_resp (int *,unsigned char*,int) ;

__attribute__((used)) static int server_ocsp_cb(SSL *s, void *arg)
{
    unsigned char *resp;

    resp = OPENSSL_malloc(1);
    if (resp == ((void*)0))
        return SSL_TLSEXT_ERR_ALERT_FATAL;



    *resp = *(unsigned char *)arg;
    if (!SSL_set_tlsext_status_ocsp_resp(s, resp, 1))
        return SSL_TLSEXT_ERR_ALERT_FATAL;

    return SSL_TLSEXT_ERR_OK;
}
