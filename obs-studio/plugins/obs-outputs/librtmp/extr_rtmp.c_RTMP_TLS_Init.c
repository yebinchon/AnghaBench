
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct tls_ctx {int dummy; } ;
struct TYPE_7__ {int cred; int prios; int hs; int entropy; int ctr_drbg; int conf; } ;


 int GNUTLS_X509_FMT_PEM ;
 int OpenSSL_add_all_digests () ;
 int RTMP_TLS_LoadCerts () ;
 TYPE_1__* RTMP_TLS_ctx ;
 TYPE_1__* SSL_CTX_new (int ) ;
 int SSL_CTX_set_default_verify_paths (TYPE_1__*) ;
 int SSL_CTX_set_options (TYPE_1__*,int ) ;
 int SSL_OP_ALL ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int SSLv23_method () ;
 TYPE_1__* calloc (int,int) ;
 int gnutls_certificate_allocate_credentials (int *) ;
 int gnutls_certificate_set_x509_trust_file (int ,char*,int ) ;
 int gnutls_global_init () ;
 int gnutls_priority_init (int *,char*,int *) ;
 int havege_init (int *) ;
 TYPE_1__* malloc (int) ;
 int mbedtls_ctr_drbg_init (int *) ;
 int mbedtls_ctr_drbg_seed (int *,int ,int *,unsigned char const*,int ) ;
 int mbedtls_entropy_func ;
 int mbedtls_entropy_init (int *) ;
 int mbedtls_ssl_config_init (int *) ;
 int strlen (char const*) ;

void
RTMP_TLS_Init()
{
}
