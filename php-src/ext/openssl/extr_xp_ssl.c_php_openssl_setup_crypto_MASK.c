#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_long ;
struct TYPE_14__ {int method; TYPE_4__* session; } ;
struct TYPE_16__ {TYPE_3__ inputs; } ;
typedef  TYPE_5__ php_stream_xport_crypto_param ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_13__ {int /*<<< orphan*/  socket; scalar_t__ is_blocked; } ;
struct TYPE_12__ {unsigned char* data; unsigned short len; } ;
struct TYPE_17__ {int is_client; int /*<<< orphan*/ * ssl_handle; TYPE_2__ s; TYPE_1__ alpn_ctx; int /*<<< orphan*/ * ctx; } ;
typedef  TYPE_6__ php_openssl_netstream_data_t ;
struct TYPE_15__ {scalar_t__ abstract; int /*<<< orphan*/ * ops; } ;
typedef  int /*<<< orphan*/  SSL_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* OPENSSL_DEFAULT_STREAM_CIPHERS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int SSL_MODE_RELEASE_BUFFERS ; 
 int SSL_OP_ALL ; 
 int SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS ; 
 int SSL_OP_NO_COMPRESSION ; 
 int SSL_OP_NO_TICKET ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC22 () ; 
 int /*<<< orphan*/ * FUNC23 () ; 
 int STREAM_CRYPTO_IS_CLIENT ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC24 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC25 (unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (char const*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 unsigned char* FUNC28 (unsigned short*,char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC31 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 int /*<<< orphan*/  FUNC34 (int) ; 
 int FUNC35 (int,int,int) ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  php_openssl_passwd_callback ; 
 int /*<<< orphan*/  php_openssl_server_alpn_callback ; 
 int FUNC39 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC40 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  php_openssl_socket_ops ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC42 (int /*<<< orphan*/ *) ; 
 int FUNC43 (int /*<<< orphan*/ *) ; 

int FUNC44(php_stream *stream,
		php_openssl_netstream_data_t *sslsock,
		php_stream_xport_crypto_param *cparam) /* {{{ */
{
	const SSL_METHOD *method;
	int ssl_ctx_options;
	int method_flags;
	zend_long min_version = 0;
	zend_long max_version = 0;
	char *cipherlist = NULL;
	char *alpn_protocols = NULL;
	zval *val;

	if (sslsock->ssl_handle) {
		if (sslsock->s.is_blocked) {
			FUNC27(NULL, E_WARNING, "SSL/TLS already set-up for this stream");
			return FAILURE;
		} else {
			return SUCCESS;
		}
	}

	FUNC0();

	/* We need to do slightly different things based on client/server method
	 * so lets remember which method was selected */
	sslsock->is_client = cparam->inputs.method & STREAM_CRYPTO_IS_CLIENT;
	method_flags = ((cparam->inputs.method >> 1) << 1);

	method = sslsock->is_client ? FUNC22() : FUNC23();
	sslsock->ctx = FUNC6(method);

	FUNC2("min_proto_version", min_version);
	FUNC2("max_proto_version", max_version);
	method_flags = FUNC35(method_flags, min_version, max_version);
#if PHP_OPENSSL_API_VERSION < 0x10100
	ssl_ctx_options = FUNC32(method_flags);
#else
	ssl_ctx_options = SSL_OP_ALL;
#endif

	if (sslsock->ctx == NULL) {
		FUNC27(NULL, E_WARNING, "SSL context creation failure");
		return FAILURE;
	}

	if (FUNC1("no_ticket") && FUNC42(val)) {
		ssl_ctx_options |= SSL_OP_NO_TICKET;
	}

	ssl_ctx_options &= ~SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS;

	if (!FUNC1("disable_compression") || FUNC42(val)) {
		ssl_ctx_options |= SSL_OP_NO_COMPRESSION;
	}

	if (FUNC1("verify_peer") && !FUNC42(val)) {
		FUNC29(sslsock->ctx, stream);
	} else if (FAILURE == FUNC30(sslsock->ctx, stream)) {
		return FAILURE;
	}

	/* callback for the passphrase (for localcert) */
	if (FUNC1("passphrase")) {
		FUNC11(sslsock->ctx, stream);
		FUNC10(sslsock->ctx, php_openssl_passwd_callback);
	}

	FUNC3("ciphers", cipherlist);
#ifndef USE_OPENSSL_SYSTEM_CIPHERS
	if (!cipherlist) {
		cipherlist = OPENSSL_DEFAULT_STREAM_CIPHERS;
	}
#endif
	if (cipherlist) {
		if (FUNC9(sslsock->ctx, cipherlist) != 1) {
			return FAILURE;
		}
	}

	if (FUNC1("security_level")) {
#ifdef HAVE_SEC_LEVEL
		zend_long lval = zval_get_long(val);
		if (lval < 0 || lval > 5) {
			php_error_docref(NULL, E_WARNING, "Security level must be between 0 and 5");
		}
		SSL_CTX_set_security_level(sslsock->ctx, lval);
#else
		FUNC27(NULL, E_WARNING,
				"security_level is not supported by the linked OpenSSL library "
				"- it is supported from version 1.1.0");
#endif
	}

	FUNC3("alpn_protocols", alpn_protocols);
	if (alpn_protocols) {
#ifdef HAVE_TLS_ALPN
		{
			unsigned short alpn_len;
			unsigned char *alpn = php_openssl_alpn_protos_parse(&alpn_len, alpn_protocols);

			if (alpn == NULL) {
				php_error_docref(NULL, E_WARNING, "Failed parsing comma-separated TLS ALPN protocol string");
				SSL_CTX_free(sslsock->ctx);
				sslsock->ctx = NULL;
				return FAILURE;
			}
			if (sslsock->is_client) {
				SSL_CTX_set_alpn_protos(sslsock->ctx, alpn, alpn_len);
			} else {
				sslsock->alpn_ctx.data = (unsigned char *) pestrndup((const char*)alpn, alpn_len, php_stream_is_persistent(stream));
				sslsock->alpn_ctx.len = alpn_len;
				SSL_CTX_set_alpn_select_cb(sslsock->ctx, php_openssl_server_alpn_callback, sslsock);
			}

			efree(alpn);
		}
#else
		FUNC27(NULL, E_WARNING,
			"alpn_protocols support is not compiled into the OpenSSL library against which PHP is linked");
#endif
	}

	if (FAILURE == FUNC39(sslsock->ctx, stream)) {
		return FAILURE;
	}

	FUNC14(sslsock->ctx, ssl_ctx_options);

#if PHP_OPENSSL_API_VERSION >= 0x10100
	SSL_CTX_set_min_proto_version(sslsock->ctx, php_openssl_get_min_proto_version(method_flags));
	SSL_CTX_set_max_proto_version(sslsock->ctx, php_openssl_get_max_proto_version(method_flags));
#endif

	if (sslsock->is_client == 0 &&
		FUNC4(stream) &&
		FAILURE == FUNC40(stream, sslsock->ctx)
	) {
		return FAILURE;
	}

	sslsock->ssl_handle = FUNC18(sslsock->ctx);

	if (sslsock->ssl_handle == NULL) {
		FUNC27(NULL, E_WARNING, "SSL handle creation failure");
		FUNC5(sslsock->ctx);
		sslsock->ctx = NULL;
#ifdef HAVE_TLS_ALPN
		if (sslsock->alpn_ctx.data) {
			pefree(sslsock->alpn_ctx.data, php_stream_is_persistent(stream));
			sslsock->alpn_ctx.data = NULL;
		}
#endif
		return FAILURE;
	} else {
		FUNC19(sslsock->ssl_handle, FUNC36(), stream);
	}

	if (!FUNC20(sslsock->ssl_handle, sslsock->s.socket)) {
		FUNC37(stream, 0, 1);
	}

#ifdef HAVE_TLS_SNI
	/* Enable server-side SNI */
	if (!sslsock->is_client && php_openssl_enable_server_sni(stream, sslsock) == FAILURE) {
		return FAILURE;
	}
#endif

	/* Enable server-side handshake renegotiation rate-limiting */
	if (!sslsock->is_client) {
		FUNC38(stream, sslsock);
	}

#ifdef SSL_MODE_RELEASE_BUFFERS
	SSL_set_mode(sslsock->ssl_handle, SSL_get_mode(sslsock->ssl_handle) | SSL_MODE_RELEASE_BUFFERS);
#endif

	if (cparam->inputs.session) {
		if (cparam->inputs.session->ops != &php_openssl_socket_ops) {
			FUNC27(NULL, E_WARNING, "supplied session stream must be an SSL enabled stream");
		} else if (((php_openssl_netstream_data_t*)cparam->inputs.session->abstract)->ssl_handle == NULL) {
			FUNC27(NULL, E_WARNING, "supplied SSL session stream is not initialized");
		} else {
			FUNC16(sslsock->ssl_handle, ((php_openssl_netstream_data_t*)cparam->inputs.session->abstract)->ssl_handle);
		}
	}

	return SUCCESS;
}