
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cert; int key; int * hs; int dhm_G; int dhm_P; int * ctr_drbg; int * conf; } ;
typedef TYPE_1__ tls_server_ctx ;
struct tls_server_ctx {int dummy; } ;
typedef int gnutls_certificate_credentials ;
struct TYPE_5__ {int hs; int ctr_drbg; int conf; } ;


 int GNUTLS_X509_FMT_PEM ;
 int RTMP_TLS_Init () ;
 TYPE_3__* RTMP_TLS_ctx ;
 int SSL_CTX_free (void*) ;
 void* SSL_CTX_new (int ) ;
 int SSL_CTX_use_PrivateKey_file (void*,char const*,int ) ;
 int SSL_CTX_use_certificate_chain_file (void*,char const*) ;
 int SSL_FILETYPE_PEM ;
 int SSLv23_server_method () ;
 void* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int gnutls_certificate_allocate_credentials (int *) ;
 int gnutls_certificate_free_credentials (void*) ;
 scalar_t__ gnutls_certificate_set_x509_key_file (void*,char const*,char const*,int ) ;
 int mbedtls_pk_free (int *) ;
 int mbedtls_pk_init (int *) ;
 scalar_t__ mbedtls_pk_parse_keyfile (int *,char const*,int *) ;
 int mbedtls_x509_crt_free (int *) ;
 int mbedtls_x509_crt_init (int *) ;
 scalar_t__ mbedtls_x509_crt_parse_file (int *,char const*) ;
 int my_dhm_G ;
 int my_dhm_P ;
 int x509_free (int *) ;
 scalar_t__ x509parse_crtfile (int *,char const*) ;
 scalar_t__ x509parse_keyfile (int *,char const*,int *) ;

void *
RTMP_TLS_AllocServerContext(const char* cert, const char* key)
{
    void *ctx = ((void*)0);
    (void)cert;
    (void)key;

    return ctx;
}
