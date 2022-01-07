
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_ssl_conn_t ;
struct TYPE_3__ {int log; } ;
typedef TYPE_1__ ngx_connection_t ;
typedef int X509_STORE_CTX ;
typedef int X509_NAME ;
typedef int X509 ;


 int NGX_LOG_DEBUG_EVENT ;
 int OPENSSL_free (char*) ;
 int SSL_get_ex_data_X509_STORE_CTX_idx () ;
 char* X509_NAME_oneline (int *,int *,int ) ;
 int * X509_STORE_CTX_get_current_cert (int *) ;
 int X509_STORE_CTX_get_error (int *) ;
 int X509_STORE_CTX_get_error_depth (int *) ;
 int * X509_STORE_CTX_get_ex_data (int *,int ) ;
 int * X509_get_issuer_name (int *) ;
 int * X509_get_subject_name (int *) ;
 int ngx_log_debug5 (int ,int ,int ,char*,int,int,int,char*,char*) ;
 TYPE_1__* ngx_ssl_get_connection (int *) ;

__attribute__((used)) static int
ngx_ssl_verify_callback(int ok, X509_STORE_CTX *x509_store)
{
    return 1;
}
