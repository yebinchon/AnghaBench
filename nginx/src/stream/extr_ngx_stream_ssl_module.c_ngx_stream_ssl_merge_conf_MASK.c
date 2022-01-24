#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_48__   TYPE_9__ ;
typedef  struct TYPE_47__   TYPE_8__ ;
typedef  struct TYPE_46__   TYPE_3__ ;
typedef  struct TYPE_45__   TYPE_2__ ;
typedef  struct TYPE_44__   TYPE_1__ ;
typedef  struct TYPE_43__   TYPE_12__ ;

/* Type definitions */
struct TYPE_47__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  log; } ;
struct TYPE_48__ {scalar_t__ len; } ;
struct TYPE_44__ {int verify; int verify_depth; TYPE_12__* session_ticket_keys; TYPE_8__ ssl; int /*<<< orphan*/  session_tickets; int /*<<< orphan*/  session_timeout; int /*<<< orphan*/ * shm_zone; int /*<<< orphan*/  builtin_session_cache; TYPE_12__* certificates; TYPE_9__ ecdh_curve; TYPE_9__ dhparam; TYPE_9__ crl; TYPE_9__ trusted_certificate; TYPE_9__ client_certificate; int /*<<< orphan*/  prefer_server_ciphers; TYPE_9__ ciphers; TYPE_12__* passwords; TYPE_12__* certificate_keys; scalar_t__ certificate_values; int /*<<< orphan*/  protocols; int /*<<< orphan*/  line; int /*<<< orphan*/  file; int /*<<< orphan*/  listen; int /*<<< orphan*/  handshake_timeout; } ;
typedef  TYPE_1__ ngx_stream_ssl_conf_t ;
typedef  int /*<<< orphan*/  ngx_str_t ;
struct TYPE_45__ {TYPE_8__* data; int /*<<< orphan*/  (* handler ) (TYPE_8__*) ;} ;
typedef  TYPE_2__ ngx_pool_cleanup_t ;
struct TYPE_46__ {int /*<<< orphan*/  log; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_conf_t ;
struct TYPE_43__ {scalar_t__ nelts; scalar_t__ elts; } ;

/* Variables and functions */
 int NGX_CONF_BITMASK_SET ; 
 char* NGX_CONF_ERROR ; 
 char* NGX_CONF_OK ; 
 char* NGX_DEFAULT_CIPHERS ; 
 char* NGX_DEFAULT_ECDH_CURVE ; 
 int /*<<< orphan*/  NGX_LOG_EMERG ; 
 scalar_t__ NGX_OK ; 
 int NGX_SSL_NONE_SCACHE ; 
 int NGX_SSL_TLSv1 ; 
 int NGX_SSL_TLSv1_1 ; 
 int NGX_SSL_TLSv1_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_OP_NO_TICKET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_12__*,TYPE_12__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__,TYPE_9__,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_3__*,TYPE_8__*,TYPE_12__*,TYPE_12__*,TYPE_12__*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,TYPE_8__*,TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*) ; 
 scalar_t__ FUNC14 (TYPE_3__*,TYPE_8__*,TYPE_9__*,int) ; 
 scalar_t__ FUNC15 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_3__*,TYPE_8__*,TYPE_9__*) ; 
 scalar_t__ FUNC17 (TYPE_3__*,TYPE_8__*,TYPE_9__*) ; 
 scalar_t__ FUNC18 (TYPE_3__*,TYPE_8__*,TYPE_9__*) ; 
 scalar_t__ FUNC19 (TYPE_8__*,int /*<<< orphan*/ *,TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (TYPE_3__*,TYPE_8__*,TYPE_12__*) ; 
 scalar_t__ FUNC21 (TYPE_3__*,TYPE_8__*,TYPE_9__*,int) ; 
 int /*<<< orphan*/  ngx_stream_ssl_certificate ; 
 scalar_t__ FUNC22 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  ngx_stream_ssl_servername ; 
 int /*<<< orphan*/  ngx_stream_ssl_sess_id_ctx ; 

__attribute__((used)) static char *
FUNC23(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_stream_ssl_conf_t *prev = parent;
    ngx_stream_ssl_conf_t *conf = child;

    ngx_pool_cleanup_t  *cln;

    FUNC4(conf->handshake_timeout,
                         prev->handshake_timeout, 60000);

    FUNC8(conf->session_timeout,
                         prev->session_timeout, 300);

    FUNC8(conf->prefer_server_ciphers,
                         prev->prefer_server_ciphers, 0);

    FUNC3(conf->protocols, prev->protocols,
                         (NGX_CONF_BITMASK_SET|NGX_SSL_TLSv1
                          |NGX_SSL_TLSv1_1|NGX_SSL_TLSv1_2));

    FUNC7(conf->verify, prev->verify, 0);
    FUNC7(conf->verify_depth, prev->verify_depth, 1);

    FUNC5(conf->certificates, prev->certificates, NULL);
    FUNC5(conf->certificate_keys, prev->certificate_keys,
                         NULL);

    FUNC5(conf->passwords, prev->passwords, NULL);

    FUNC6(conf->dhparam, prev->dhparam, "");

    FUNC6(conf->client_certificate, prev->client_certificate,
                         "");
    FUNC6(conf->trusted_certificate,
                         prev->trusted_certificate, "");
    FUNC6(conf->crl, prev->crl, "");

    FUNC6(conf->ecdh_curve, prev->ecdh_curve,
                         NGX_DEFAULT_ECDH_CURVE);

    FUNC6(conf->ciphers, prev->ciphers, NGX_DEFAULT_CIPHERS);


    conf->ssl.log = cf->log;

    if (!conf->listen) {
        return NGX_CONF_OK;
    }

    if (conf->certificates == NULL) {
        FUNC9(NGX_LOG_EMERG, cf->log, 0,
                      "no \"ssl_certificate\" is defined for "
                      "the \"listen ... ssl\" directive in %s:%ui",
                      conf->file, conf->line);
        return NGX_CONF_ERROR;
    }

    if (conf->certificate_keys == NULL) {
        FUNC9(NGX_LOG_EMERG, cf->log, 0,
                      "no \"ssl_certificate_key\" is defined for "
                      "the \"listen ... ssl\" directive in %s:%ui",
                      conf->file, conf->line);
        return NGX_CONF_ERROR;
    }

    if (conf->certificate_keys->nelts < conf->certificates->nelts) {
        FUNC9(NGX_LOG_EMERG, cf->log, 0,
                      "no \"ssl_certificate_key\" is defined "
                      "for certificate \"%V\" and "
                      "the \"listen ... ssl\" directive in %s:%ui",
                      ((ngx_str_t *) conf->certificates->elts)
                      + conf->certificates->nelts - 1,
                      conf->file, conf->line);
        return NGX_CONF_ERROR;
    }

    if (FUNC15(&conf->ssl, conf->protocols, NULL) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    cln = FUNC10(cf->pool, 0);
    if (cln == NULL) {
        FUNC13(&conf->ssl);
        return NGX_CONF_ERROR;
    }

    cln->handler = ngx_ssl_cleanup_ctx;
    cln->data = &conf->ssl;

#ifdef SSL_CTRL_SET_TLSEXT_HOSTNAME
    SSL_CTX_set_tlsext_servername_callback(conf->ssl.ctx,
                                           ngx_stream_ssl_servername);
#endif

    if (FUNC22(cf, conf) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    if (conf->certificate_values) {

#ifdef SSL_R_CERT_CB_ERROR

        /* install callback to lookup certificates */

        SSL_CTX_set_cert_cb(conf->ssl.ctx, ngx_stream_ssl_certificate, conf);

#else
        FUNC9(NGX_LOG_EMERG, cf->log, 0,
                      "variables in "
                      "\"ssl_certificate\" and \"ssl_certificate_key\" "
                      "directives are not supported on this platform");
        return NGX_CONF_ERROR;
#endif

    } else {

        /* configure certificates */

        if (FUNC11(cf, &conf->ssl, conf->certificates,
                                 conf->certificate_keys, conf->passwords)
            != NGX_OK)
        {
            return NGX_CONF_ERROR;
        }
    }

    if (FUNC12(cf, &conf->ssl, &conf->ciphers,
                        conf->prefer_server_ciphers)
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    if (conf->verify) {

        if (conf->client_certificate.len == 0 && conf->verify != 3) {
            FUNC9(NGX_LOG_EMERG, cf->log, 0,
                          "no ssl_client_certificate for ssl_verify_client");
            return NGX_CONF_ERROR;
        }

        if (FUNC14(cf, &conf->ssl,
                                       &conf->client_certificate,
                                       conf->verify_depth)
            != NGX_OK)
        {
            return NGX_CONF_ERROR;
        }

        if (FUNC21(cf, &conf->ssl,
                                        &conf->trusted_certificate,
                                        conf->verify_depth)
            != NGX_OK)
        {
            return NGX_CONF_ERROR;
        }

        if (FUNC16(cf, &conf->ssl, &conf->crl) != NGX_OK) {
            return NGX_CONF_ERROR;
        }
    }

    if (FUNC17(cf, &conf->ssl, &conf->dhparam) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    if (FUNC18(cf, &conf->ssl, &conf->ecdh_curve) != NGX_OK) {
        return NGX_CONF_ERROR;
    }

    FUNC8(conf->builtin_session_cache,
                         prev->builtin_session_cache, NGX_SSL_NONE_SCACHE);

    if (conf->shm_zone == NULL) {
        conf->shm_zone = prev->shm_zone;
    }

    if (FUNC19(&conf->ssl, &ngx_stream_ssl_sess_id_ctx,
                              conf->certificates, conf->builtin_session_cache,
                              conf->shm_zone, conf->session_timeout)
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    FUNC8(conf->session_tickets,
                         prev->session_tickets, 1);

#ifdef SSL_OP_NO_TICKET
    if (!conf->session_tickets) {
        SSL_CTX_set_options(conf->ssl.ctx, SSL_OP_NO_TICKET);
    }
#endif

    FUNC5(conf->session_ticket_keys,
                         prev->session_ticket_keys, NULL);

    if (FUNC20(cf, &conf->ssl, conf->session_ticket_keys)
        != NGX_OK)
    {
        return NGX_CONF_ERROR;
    }

    return NGX_CONF_OK;
}