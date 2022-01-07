
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_14__ {int method; TYPE_4__* session; } ;
struct TYPE_16__ {TYPE_3__ inputs; } ;
typedef TYPE_5__ php_stream_xport_crypto_param ;
typedef int php_stream ;
struct TYPE_13__ {int socket; scalar_t__ is_blocked; } ;
struct TYPE_12__ {unsigned char* data; unsigned short len; } ;
struct TYPE_17__ {int is_client; int * ssl_handle; TYPE_2__ s; TYPE_1__ alpn_ctx; int * ctx; } ;
typedef TYPE_6__ php_openssl_netstream_data_t ;
struct TYPE_15__ {scalar_t__ abstract; int * ops; } ;
typedef int SSL_METHOD ;


 int ERR_clear_error () ;
 int E_WARNING ;
 int FAILURE ;
 scalar_t__ GET_VER_OPT (char*) ;
 int GET_VER_OPT_LONG (char*,int) ;
 int GET_VER_OPT_STRING (char*,char*) ;
 char* OPENSSL_DEFAULT_STREAM_CIPHERS ;
 scalar_t__ PHP_STREAM_CONTEXT (int *) ;
 int SSL_CTX_free (int *) ;
 int * SSL_CTX_new (int const*) ;
 int SSL_CTX_set_alpn_protos (int *,unsigned char*,unsigned short) ;
 int SSL_CTX_set_alpn_select_cb (int *,int ,TYPE_6__*) ;
 int SSL_CTX_set_cipher_list (int *,char*) ;
 int SSL_CTX_set_default_passwd_cb (int *,int ) ;
 int SSL_CTX_set_default_passwd_cb_userdata (int *,int *) ;
 int SSL_CTX_set_max_proto_version (int *,int ) ;
 int SSL_CTX_set_min_proto_version (int *,int ) ;
 int SSL_CTX_set_options (int *,int) ;
 int SSL_CTX_set_security_level (int *,int) ;
 int SSL_MODE_RELEASE_BUFFERS ;
 int SSL_OP_ALL ;
 int SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS ;
 int SSL_OP_NO_COMPRESSION ;
 int SSL_OP_NO_TICKET ;
 int SSL_copy_session_id (int *,int *) ;
 int SSL_get_mode (int *) ;
 int * SSL_new (int *) ;
 int SSL_set_ex_data (int *,int ,int *) ;
 int SSL_set_fd (int *,int ) ;
 int SSL_set_mode (int *,int) ;
 int * SSLv23_client_method () ;
 int * SSLv23_server_method () ;
 int STREAM_CRYPTO_IS_CLIENT ;
 int SUCCESS ;
 int efree (unsigned char*) ;
 int pefree (unsigned char*,int ) ;
 scalar_t__ pestrndup (char const*,unsigned short,int ) ;
 int php_error_docref (int *,int ,char*) ;
 unsigned char* php_openssl_alpn_protos_parse (unsigned short*,char*) ;
 int php_openssl_disable_peer_verification (int *,int *) ;
 int php_openssl_enable_peer_verification (int *,int *) ;
 int php_openssl_enable_server_sni (int *,TYPE_6__*) ;
 int php_openssl_get_crypto_method_ctx_flags (int) ;
 int php_openssl_get_max_proto_version (int) ;
 int php_openssl_get_min_proto_version (int) ;
 int php_openssl_get_proto_version_flags (int,int,int) ;
 int php_openssl_get_ssl_stream_data_index () ;
 int php_openssl_handle_ssl_error (int *,int ,int) ;
 int php_openssl_init_server_reneg_limit (int *,TYPE_6__*) ;
 int php_openssl_passwd_callback ;
 int php_openssl_server_alpn_callback ;
 int php_openssl_set_local_cert (int *,int *) ;
 int php_openssl_set_server_specific_opts (int *,int *) ;
 int php_openssl_socket_ops ;
 int php_stream_is_persistent (int *) ;
 scalar_t__ zend_is_true (int *) ;
 int zval_get_long (int *) ;

int php_openssl_setup_crypto(php_stream *stream,
  php_openssl_netstream_data_t *sslsock,
  php_stream_xport_crypto_param *cparam)
{
 const SSL_METHOD *method;
 int ssl_ctx_options;
 int method_flags;
 zend_long min_version = 0;
 zend_long max_version = 0;
 char *cipherlist = ((void*)0);
 char *alpn_protocols = ((void*)0);
 zval *val;

 if (sslsock->ssl_handle) {
  if (sslsock->s.is_blocked) {
   php_error_docref(((void*)0), E_WARNING, "SSL/TLS already set-up for this stream");
   return FAILURE;
  } else {
   return SUCCESS;
  }
 }

 ERR_clear_error();



 sslsock->is_client = cparam->inputs.method & STREAM_CRYPTO_IS_CLIENT;
 method_flags = ((cparam->inputs.method >> 1) << 1);

 method = sslsock->is_client ? SSLv23_client_method() : SSLv23_server_method();
 sslsock->ctx = SSL_CTX_new(method);

 GET_VER_OPT_LONG("min_proto_version", min_version);
 GET_VER_OPT_LONG("max_proto_version", max_version);
 method_flags = php_openssl_get_proto_version_flags(method_flags, min_version, max_version);

 ssl_ctx_options = php_openssl_get_crypto_method_ctx_flags(method_flags);




 if (sslsock->ctx == ((void*)0)) {
  php_error_docref(((void*)0), E_WARNING, "SSL context creation failure");
  return FAILURE;
 }

 if (GET_VER_OPT("no_ticket") && zend_is_true(val)) {
  ssl_ctx_options |= SSL_OP_NO_TICKET;
 }

 ssl_ctx_options &= ~SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS;

 if (!GET_VER_OPT("disable_compression") || zend_is_true(val)) {
  ssl_ctx_options |= SSL_OP_NO_COMPRESSION;
 }

 if (GET_VER_OPT("verify_peer") && !zend_is_true(val)) {
  php_openssl_disable_peer_verification(sslsock->ctx, stream);
 } else if (FAILURE == php_openssl_enable_peer_verification(sslsock->ctx, stream)) {
  return FAILURE;
 }


 if (GET_VER_OPT("passphrase")) {
  SSL_CTX_set_default_passwd_cb_userdata(sslsock->ctx, stream);
  SSL_CTX_set_default_passwd_cb(sslsock->ctx, php_openssl_passwd_callback);
 }

 GET_VER_OPT_STRING("ciphers", cipherlist);

 if (!cipherlist) {
  cipherlist = OPENSSL_DEFAULT_STREAM_CIPHERS;
 }

 if (cipherlist) {
  if (SSL_CTX_set_cipher_list(sslsock->ctx, cipherlist) != 1) {
   return FAILURE;
  }
 }

 if (GET_VER_OPT("security_level")) {







  php_error_docref(((void*)0), E_WARNING,
    "security_level is not supported by the linked OpenSSL library "
    "- it is supported from version 1.1.0");

 }

 GET_VER_OPT_STRING("alpn_protocols", alpn_protocols);
 if (alpn_protocols) {
  php_error_docref(((void*)0), E_WARNING,
   "alpn_protocols support is not compiled into the OpenSSL library against which PHP is linked");

 }

 if (FAILURE == php_openssl_set_local_cert(sslsock->ctx, stream)) {
  return FAILURE;
 }

 SSL_CTX_set_options(sslsock->ctx, ssl_ctx_options);






 if (sslsock->is_client == 0 &&
  PHP_STREAM_CONTEXT(stream) &&
  FAILURE == php_openssl_set_server_specific_opts(stream, sslsock->ctx)
 ) {
  return FAILURE;
 }

 sslsock->ssl_handle = SSL_new(sslsock->ctx);

 if (sslsock->ssl_handle == ((void*)0)) {
  php_error_docref(((void*)0), E_WARNING, "SSL handle creation failure");
  SSL_CTX_free(sslsock->ctx);
  sslsock->ctx = ((void*)0);






  return FAILURE;
 } else {
  SSL_set_ex_data(sslsock->ssl_handle, php_openssl_get_ssl_stream_data_index(), stream);
 }

 if (!SSL_set_fd(sslsock->ssl_handle, sslsock->s.socket)) {
  php_openssl_handle_ssl_error(stream, 0, 1);
 }
 if (!sslsock->is_client) {
  php_openssl_init_server_reneg_limit(stream, sslsock);
 }





 if (cparam->inputs.session) {
  if (cparam->inputs.session->ops != &php_openssl_socket_ops) {
   php_error_docref(((void*)0), E_WARNING, "supplied session stream must be an SSL enabled stream");
  } else if (((php_openssl_netstream_data_t*)cparam->inputs.session->abstract)->ssl_handle == ((void*)0)) {
   php_error_docref(((void*)0), E_WARNING, "supplied SSL session stream is not initialized");
  } else {
   SSL_copy_session_id(sslsock->ssl_handle, ((php_openssl_netstream_data_t*)cparam->inputs.session->abstract)->ssl_handle);
  }
 }

 return SUCCESS;
}
