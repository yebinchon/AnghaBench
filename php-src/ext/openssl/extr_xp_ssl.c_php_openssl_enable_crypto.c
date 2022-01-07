
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_10__ {scalar_t__ activate; } ;
struct TYPE_11__ {TYPE_2__ inputs; } ;
typedef TYPE_3__ php_stream_xport_crypto_param ;
typedef int php_stream ;
struct TYPE_9__ {int is_blocked; int socket; struct timeval timeout; } ;
struct TYPE_12__ {int ssl_active; int state_set; int ssl_handle; TYPE_1__ s; scalar_t__ is_client; struct timeval connect_timeout; } ;
typedef TYPE_4__ php_openssl_netstream_data_t ;
typedef int X509 ;


 scalar_t__ EAGAIN ;
 int ERR_clear_error () ;
 int E_DEPRECATED ;
 int E_WARNING ;
 scalar_t__ FAILURE ;
 scalar_t__ PHP_STREAM_CONTEXT (int *) ;
 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 int SSL_ERROR_WANT_READ ;
 int SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER ;
 int SSL_MODE_ENABLE_PARTIAL_WRITE ;
 int SSL_accept (int ) ;
 int SSL_connect (int ) ;
 int SSL_get_error (int ,int) ;
 int SSL_get_mode (int ) ;
 int * SSL_get_peer_certificate (int ) ;
 int SSL_set_accept_state (int ) ;
 int SSL_set_connect_state (int ) ;
 int SSL_set_mode (int ,int) ;
 int SSL_shutdown (int ) ;
 scalar_t__ SUCCESS ;
 int X509_free (int *) ;
 int ZVAL_ARR (int *,int ) ;
 scalar_t__ errno ;
 int gettimeofday (struct timeval*,int *) ;
 int php_error (int ,char*) ;
 int php_error_docref (int *,int ,char*) ;
 scalar_t__ php_openssl_apply_peer_verification_policy (int ,int *,int *) ;
 int php_openssl_capture_peer_certs (int *,TYPE_4__*,int *) ;
 int php_openssl_capture_session_meta (int ) ;
 scalar_t__ php_openssl_compare_timeval (struct timeval,struct timeval) ;
 int php_openssl_enable_client_sni (int *,TYPE_4__*) ;
 int php_openssl_handle_ssl_error (int *,int,int) ;
 struct timeval php_openssl_subtract_timeval (struct timeval,struct timeval) ;
 int php_pollfd_for (int ,int,struct timeval*) ;
 scalar_t__ php_set_sock_blocking (int ,int) ;
 int * php_stream_context_get_option (scalar_t__,char*,char*) ;
 int php_stream_context_set_option (scalar_t__,char*,char*,int *) ;
 scalar_t__ zend_is_true (int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int php_openssl_enable_crypto(php_stream *stream,
  php_openssl_netstream_data_t *sslsock,
  php_stream_xport_crypto_param *cparam)
{
 int n;
 int retry = 1;
 int cert_captured = 0;
 X509 *peer_cert;

 if (cparam->inputs.activate && !sslsock->ssl_active) {
  struct timeval start_time, *timeout;
  int blocked = sslsock->s.is_blocked, has_timeout = 0;







  if (!sslsock->state_set) {
   if (sslsock->is_client) {
    SSL_set_connect_state(sslsock->ssl_handle);
   } else {
    SSL_set_accept_state(sslsock->ssl_handle);
   }
   sslsock->state_set = 1;
  }

  if (SUCCESS == php_set_sock_blocking(sslsock->s.socket, 0)) {
   sslsock->s.is_blocked = 0;


   SSL_set_mode(
    sslsock->ssl_handle,
    (
     SSL_get_mode(sslsock->ssl_handle) |
     SSL_MODE_ENABLE_PARTIAL_WRITE |
     SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER
    )
   );
  }

  timeout = sslsock->is_client ? &sslsock->connect_timeout : &sslsock->s.timeout;
  has_timeout = !sslsock->s.is_blocked && (timeout->tv_sec || timeout->tv_usec);

  if (has_timeout) {
   gettimeofday(&start_time, ((void*)0));
  }

  do {
   struct timeval cur_time, elapsed_time;

   ERR_clear_error();
   if (sslsock->is_client) {
    n = SSL_connect(sslsock->ssl_handle);
   } else {
    n = SSL_accept(sslsock->ssl_handle);
   }

   if (has_timeout) {
    gettimeofday(&cur_time, ((void*)0));
    elapsed_time = php_openssl_subtract_timeval(cur_time, start_time);

    if (php_openssl_compare_timeval( elapsed_time, *timeout) > 0) {
     php_error_docref(((void*)0), E_WARNING, "SSL: Handshake timed out");
     return -1;
    }
   }

   if (n <= 0) {

    retry = php_openssl_handle_ssl_error(stream, n, blocked);
    if (retry) {


     int err = SSL_get_error(sslsock->ssl_handle, n);
     struct timeval left_time;

     if (has_timeout) {
      left_time = php_openssl_subtract_timeval(*timeout, elapsed_time);
     }
     php_pollfd_for(sslsock->s.socket, (err == SSL_ERROR_WANT_READ) ?
      (POLLIN|POLLPRI) : POLLOUT, has_timeout ? &left_time : ((void*)0));
    }
   } else {
    retry = 0;
   }
  } while (retry);

  if (sslsock->s.is_blocked != blocked && SUCCESS == php_set_sock_blocking(sslsock->s.socket, blocked)) {
   sslsock->s.is_blocked = blocked;
  }

  if (n == 1) {
   peer_cert = SSL_get_peer_certificate(sslsock->ssl_handle);
   if (peer_cert && PHP_STREAM_CONTEXT(stream)) {
    cert_captured = php_openssl_capture_peer_certs(stream, sslsock, peer_cert);
   }

   if (FAILURE == php_openssl_apply_peer_verification_policy(sslsock->ssl_handle, peer_cert, stream)) {
    SSL_shutdown(sslsock->ssl_handle);
    n = -1;
   } else {
    sslsock->ssl_active = 1;

    if (PHP_STREAM_CONTEXT(stream)) {
     zval *val;
     if (((void*)0) != (val = php_stream_context_get_option(PHP_STREAM_CONTEXT(stream),
      "ssl", "capture_session_meta"))
     ) {
       php_error(E_DEPRECATED,
       "capture_session_meta is deprecated; its information is now available via stream_get_meta_data()"
                        );
     }

     if (val && zend_is_true(val)) {
      zval meta_arr;
      ZVAL_ARR(&meta_arr, php_openssl_capture_session_meta(sslsock->ssl_handle));
      php_stream_context_set_option(PHP_STREAM_CONTEXT(stream), "ssl", "session_meta", &meta_arr);
      zval_ptr_dtor(&meta_arr);
     }
    }
   }
  } else if (errno == EAGAIN) {
   n = 0;
  } else {
   n = -1;

   peer_cert = SSL_get_peer_certificate(sslsock->ssl_handle);
   if (peer_cert && PHP_STREAM_CONTEXT(stream)) {
    cert_captured = php_openssl_capture_peer_certs(stream, sslsock, peer_cert);
   }
  }

  if (n && peer_cert && cert_captured == 0) {
   X509_free(peer_cert);
  }

  return n;

 } else if (!cparam->inputs.activate && sslsock->ssl_active) {

  SSL_shutdown(sslsock->ssl_handle);
  sslsock->ssl_active = 0;
 }

 return -1;
}
