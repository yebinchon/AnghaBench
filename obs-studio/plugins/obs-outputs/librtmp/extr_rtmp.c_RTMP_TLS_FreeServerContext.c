
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key; int cert; } ;
typedef TYPE_1__ tls_server_ctx ;


 int SSL_CTX_free (void*) ;
 int free (void*) ;
 int gnutls_certificate_free_credentials (void*) ;
 int mbedtls_pk_free (int *) ;
 int mbedtls_x509_crt_free (int *) ;
 int rsa_free (int *) ;
 int x509_free (int *) ;

void
RTMP_TLS_FreeServerContext(void *ctx)
{
    (void)ctx;

}
