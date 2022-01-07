
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;
typedef int ngx_int_t ;


 int ERR_clear_error () ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 int OPENSSL_INIT_LOAD_CONFIG ;
 int OPENSSL_config (int *) ;
 scalar_t__ OPENSSL_init_ssl (int ,int *) ;
 int OpenSSL_add_all_algorithms () ;
 int SSL_COMP ;
 int SSL_COMP_get_compression_methods () ;
 int SSL_CTX_get_ex_new_index (int ,int *,int *,int *,int *) ;
 int SSL_get_ex_new_index (int ,int *,int *,int *,int *) ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int STACK_OF (int ) ;
 int X509_get_ex_new_index (int ,int *,int *,int *,int *) ;
 int ngx_ssl_certificate_index ;
 int ngx_ssl_certificate_name_index ;
 int ngx_ssl_connection_index ;
 int ngx_ssl_error (int ,int *,int ,char*) ;
 int ngx_ssl_next_certificate_index ;
 int ngx_ssl_server_conf_index ;
 int ngx_ssl_session_cache_index ;
 int ngx_ssl_session_ticket_keys_index ;
 int ngx_ssl_stapling_index ;
 int sk_SSL_COMP_num (int) ;
 int sk_SSL_COMP_pop (int) ;
 int ssl_comp_methods ;

ngx_int_t
ngx_ssl_init(ngx_log_t *log)
{
    OPENSSL_config(((void*)0));

    SSL_library_init();
    SSL_load_error_strings();

    OpenSSL_add_all_algorithms();




    {




    int n;
    STACK_OF(SSL_COMP) *ssl_comp_methods;

    ssl_comp_methods = SSL_COMP_get_compression_methods();
    n = sk_SSL_COMP_num(ssl_comp_methods);

    while (n--) {
        (void) sk_SSL_COMP_pop(ssl_comp_methods);
    }
    }


    ngx_ssl_connection_index = SSL_get_ex_new_index(0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

    if (ngx_ssl_connection_index == -1) {
        ngx_ssl_error(NGX_LOG_ALERT, log, 0, "SSL_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_server_conf_index = SSL_CTX_get_ex_new_index(0, ((void*)0), ((void*)0), ((void*)0),
                                                         ((void*)0));
    if (ngx_ssl_server_conf_index == -1) {
        ngx_ssl_error(NGX_LOG_ALERT, log, 0,
                      "SSL_CTX_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_session_cache_index = SSL_CTX_get_ex_new_index(0, ((void*)0), ((void*)0), ((void*)0),
                                                           ((void*)0));
    if (ngx_ssl_session_cache_index == -1) {
        ngx_ssl_error(NGX_LOG_ALERT, log, 0,
                      "SSL_CTX_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_session_ticket_keys_index = SSL_CTX_get_ex_new_index(0, ((void*)0), ((void*)0),
                                                                 ((void*)0), ((void*)0));
    if (ngx_ssl_session_ticket_keys_index == -1) {
        ngx_ssl_error(NGX_LOG_ALERT, log, 0,
                      "SSL_CTX_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_certificate_index = SSL_CTX_get_ex_new_index(0, ((void*)0), ((void*)0), ((void*)0),
                                                         ((void*)0));
    if (ngx_ssl_certificate_index == -1) {
        ngx_ssl_error(NGX_LOG_ALERT, log, 0,
                      "SSL_CTX_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_next_certificate_index = X509_get_ex_new_index(0, ((void*)0), ((void*)0), ((void*)0),
                                                           ((void*)0));
    if (ngx_ssl_next_certificate_index == -1) {
        ngx_ssl_error(NGX_LOG_ALERT, log, 0, "X509_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_certificate_name_index = X509_get_ex_new_index(0, ((void*)0), ((void*)0), ((void*)0),
                                                           ((void*)0));

    if (ngx_ssl_certificate_name_index == -1) {
        ngx_ssl_error(NGX_LOG_ALERT, log, 0, "X509_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_stapling_index = X509_get_ex_new_index(0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

    if (ngx_ssl_stapling_index == -1) {
        ngx_ssl_error(NGX_LOG_ALERT, log, 0, "X509_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    return NGX_OK;
}
