#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  SSL_COMP ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int ngx_ssl_certificate_index ; 
 int ngx_ssl_certificate_name_index ; 
 int ngx_ssl_connection_index ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int ngx_ssl_next_certificate_index ; 
 int ngx_ssl_server_conf_index ; 
 int ngx_ssl_session_cache_index ; 
 int ngx_ssl_session_ticket_keys_index ; 
 int ngx_ssl_stapling_index ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int ssl_comp_methods ; 

ngx_int_t
FUNC14(ngx_log_t *log)
{
#if OPENSSL_VERSION_NUMBER >= 0x10100003L

    if (OPENSSL_init_ssl(OPENSSL_INIT_LOAD_CONFIG, NULL) == 0) {
        ngx_ssl_error(NGX_LOG_ALERT, log, 0, "OPENSSL_init_ssl() failed");
        return NGX_ERROR;
    }

    /*
     * OPENSSL_init_ssl() may leave errors in the error queue
     * while returning success
     */

    ERR_clear_error();

#else

    FUNC1(NULL);

    FUNC7();
    FUNC8();

    FUNC3();

#endif

#ifndef SSL_OP_NO_COMPRESSION
    {
    /*
     * Disable gzip compression in OpenSSL prior to 1.0.0 version,
     * this saves about 522K per connection.
     */
    int                  n;
    FUNC9(SSL_COMP)  *ssl_comp_methods;

    ssl_comp_methods = FUNC4();
    n = FUNC12(ssl_comp_methods);

    while (n--) {
        (void) FUNC13(ssl_comp_methods);
    }
    }
#endif

    ngx_ssl_connection_index = FUNC6(0, NULL, NULL, NULL, NULL);

    if (ngx_ssl_connection_index == -1) {
        FUNC11(NGX_LOG_ALERT, log, 0, "SSL_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_server_conf_index = FUNC5(0, NULL, NULL, NULL,
                                                         NULL);
    if (ngx_ssl_server_conf_index == -1) {
        FUNC11(NGX_LOG_ALERT, log, 0,
                      "SSL_CTX_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_session_cache_index = FUNC5(0, NULL, NULL, NULL,
                                                           NULL);
    if (ngx_ssl_session_cache_index == -1) {
        FUNC11(NGX_LOG_ALERT, log, 0,
                      "SSL_CTX_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_session_ticket_keys_index = FUNC5(0, NULL, NULL,
                                                                 NULL, NULL);
    if (ngx_ssl_session_ticket_keys_index == -1) {
        FUNC11(NGX_LOG_ALERT, log, 0,
                      "SSL_CTX_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_certificate_index = FUNC5(0, NULL, NULL, NULL,
                                                         NULL);
    if (ngx_ssl_certificate_index == -1) {
        FUNC11(NGX_LOG_ALERT, log, 0,
                      "SSL_CTX_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_next_certificate_index = FUNC10(0, NULL, NULL, NULL,
                                                           NULL);
    if (ngx_ssl_next_certificate_index == -1) {
        FUNC11(NGX_LOG_ALERT, log, 0, "X509_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_certificate_name_index = FUNC10(0, NULL, NULL, NULL,
                                                           NULL);

    if (ngx_ssl_certificate_name_index == -1) {
        FUNC11(NGX_LOG_ALERT, log, 0, "X509_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    ngx_ssl_stapling_index = FUNC10(0, NULL, NULL, NULL, NULL);

    if (ngx_ssl_stapling_index == -1) {
        FUNC11(NGX_LOG_ALERT, log, 0, "X509_get_ex_new_index() failed");
        return NGX_ERROR;
    }

    return NGX_OK;
}