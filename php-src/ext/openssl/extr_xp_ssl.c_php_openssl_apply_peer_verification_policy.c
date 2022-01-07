
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {scalar_t__ abstract; } ;
typedef TYPE_1__ php_stream ;
struct TYPE_5__ {int is_client; char* url_name; } ;
typedef TYPE_2__ php_openssl_netstream_data_t ;
typedef int X509 ;
typedef int SSL ;


 int E_WARNING ;
 int FAILURE ;
 int GET_VER_OPT (char*) ;
 int GET_VER_OPT_STRING (char*,char*) ;
 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_STRING ;
 int SSL_get_verify_result (int *) ;
 int SUCCESS ;


 int X509_verify_cert_error_string (int) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int php_error_docref (int *,int ,char*,...) ;
 scalar_t__ php_openssl_matches_common_name (int *,char*) ;
 scalar_t__ php_openssl_matches_san_list (int *,char*) ;
 int php_openssl_x509_fingerprint_match (int *,int *) ;
 int zend_is_true (int *) ;

__attribute__((used)) static int php_openssl_apply_peer_verification_policy(SSL *ssl, X509 *peer, php_stream *stream)
{
 zval *val = ((void*)0);
 zval *peer_fingerprint;
 char *peer_name = ((void*)0);
 int err,
  must_verify_peer,
  must_verify_peer_name,
  must_verify_fingerprint;

 php_openssl_netstream_data_t *sslsock = (php_openssl_netstream_data_t*)stream->abstract;

 must_verify_peer = GET_VER_OPT("verify_peer")
  ? zend_is_true(val)
  : sslsock->is_client;

 must_verify_peer_name = GET_VER_OPT("verify_peer_name")
  ? zend_is_true(val)
  : sslsock->is_client;

 must_verify_fingerprint = GET_VER_OPT("peer_fingerprint");
 peer_fingerprint = val;

 if ((must_verify_peer || must_verify_peer_name || must_verify_fingerprint) && peer == ((void*)0)) {
  php_error_docref(((void*)0), E_WARNING, "Could not get peer certificate");
  return FAILURE;
 }


 if (must_verify_peer) {
  err = SSL_get_verify_result(ssl);
  switch (err) {
   case 128:

    break;
   case 129:
    if (GET_VER_OPT("allow_self_signed") && zend_is_true(val)) {

     break;
    }

   default:
    php_error_docref(((void*)0), E_WARNING,
      "Could not verify peer: code:%d %s",
      err,
      X509_verify_cert_error_string(err)
    );
    return FAILURE;
  }
 }


 if (must_verify_fingerprint) {
  if (Z_TYPE_P(peer_fingerprint) == IS_STRING || Z_TYPE_P(peer_fingerprint) == IS_ARRAY) {
   if (!php_openssl_x509_fingerprint_match(peer, peer_fingerprint)) {
    php_error_docref(((void*)0), E_WARNING,
     "peer_fingerprint match failure"
    );
    return FAILURE;
   }
  } else {
   php_error_docref(((void*)0), E_WARNING,
    "Expected peer fingerprint must be a string or an array"
   );
   return FAILURE;
  }
 }


 if (must_verify_peer_name) {
  GET_VER_OPT_STRING("peer_name", peer_name);


  if (peer_name == ((void*)0) && sslsock->is_client) {
   peer_name = sslsock->url_name;
  }

  if (peer_name) {
   if (php_openssl_matches_san_list(peer, peer_name)) {
    return SUCCESS;
   } else if (php_openssl_matches_common_name(peer, peer_name)) {
    return SUCCESS;
   } else {
    return FAILURE;
   }
  } else {
   return FAILURE;
  }
 }

 return SUCCESS;
}
