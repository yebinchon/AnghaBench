
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int stream_shutdown_t ;
typedef int ssize_t ;
struct TYPE_14__ {int eof; scalar_t__ abstract; } ;
typedef TYPE_3__ php_stream ;
struct TYPE_13__ {int is_blocked; int timeout_event; int socket; struct timeval timeout; } ;
struct TYPE_15__ {TYPE_2__ s; int ssl_handle; TYPE_1__* reneg; scalar_t__ ssl_active; } ;
typedef TYPE_4__ php_openssl_netstream_data_t ;
struct TYPE_16__ {size_t (* read ) (TYPE_3__*,char*,size_t) ;size_t (* write ) (TYPE_3__*,char*,size_t) ;} ;
struct TYPE_12__ {scalar_t__ should_close; } ;


 scalar_t__ EAGAIN ;
 int ERR_clear_error () ;
 size_t INT_MAX ;
 int PHP_STREAM_CONTEXT (TYPE_3__*) ;
 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 scalar_t__ SHUT_RDWR ;
 int SSL_ERROR_NONE ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_get_error (int ,int) ;
 int SSL_pending (int ) ;
 int SSL_read (int ,char*,int) ;
 int SSL_write (int ,char*,int) ;
 scalar_t__ SUCCESS ;
 scalar_t__ errno ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ php_openssl_compare_timeval (struct timeval,struct timeval) ;
 int php_openssl_handle_ssl_error (TYPE_3__*,int,int ) ;
 struct timeval php_openssl_subtract_timeval (struct timeval,struct timeval) ;
 int php_pollfd_for (int ,int,struct timeval*) ;
 scalar_t__ php_set_sock_blocking (int ,int) ;
 int php_stream_notify_progress_increment (int ,int,int ) ;
 TYPE_8__ php_stream_socket_ops ;
 int php_stream_xport_shutdown (TYPE_3__*,int ) ;
 size_t stub1 (TYPE_3__*,char*,size_t) ;
 size_t stub2 (TYPE_3__*,char*,size_t) ;

__attribute__((used)) static ssize_t php_openssl_sockop_io(int read, php_stream *stream, char *buf, size_t count)
{
 php_openssl_netstream_data_t *sslsock = (php_openssl_netstream_data_t*)stream->abstract;


 if (sslsock->ssl_active) {
  int retry = 1;
  struct timeval start_time;
  struct timeval *timeout = ((void*)0);
  int began_blocked = sslsock->s.is_blocked;
  int has_timeout = 0;
  int nr_bytes = 0;


  if (count > INT_MAX) {
   count = INT_MAX;
  }


  if (began_blocked) {
   timeout = &sslsock->s.timeout;
  }

  if (timeout && php_set_sock_blocking(sslsock->s.socket, 0) == SUCCESS) {
   sslsock->s.is_blocked = 0;
  }

  if (!sslsock->s.is_blocked && timeout && (timeout->tv_sec || timeout->tv_usec)) {
   has_timeout = 1;

   gettimeofday(&start_time, ((void*)0));
  }


  do {
   struct timeval cur_time, elapsed_time, left_time;


   if (has_timeout) {
    gettimeofday(&cur_time, ((void*)0));


    elapsed_time = php_openssl_subtract_timeval(cur_time, start_time);


    if (php_openssl_compare_timeval(elapsed_time, *timeout) > 0 ) {

     if (began_blocked) {
      php_set_sock_blocking(sslsock->s.socket, 1);
      sslsock->s.is_blocked = 1;
     }
     sslsock->s.timeout_event = 1;
     return -1;
    }
   }


   ERR_clear_error();
   if (read) {
    nr_bytes = SSL_read(sslsock->ssl_handle, buf, (int)count);

    if (sslsock->reneg && sslsock->reneg->should_close) {

     php_stream_xport_shutdown(stream, (stream_shutdown_t)SHUT_RDWR);
     nr_bytes = 0;
     stream->eof = 1;
      break;
    }
   } else {
    nr_bytes = SSL_write(sslsock->ssl_handle, buf, (int)count);
   }


   if (has_timeout) {
    left_time = php_openssl_subtract_timeval( *timeout, elapsed_time );
   }


   if (nr_bytes <= 0) {


    int err = SSL_get_error(sslsock->ssl_handle, nr_bytes );
    retry = php_openssl_handle_ssl_error(stream, nr_bytes, 0);


    if (errno == EAGAIN && err == SSL_ERROR_WANT_READ && read) {
     retry = 1;
    }
    if (errno == EAGAIN && err == SSL_ERROR_WANT_WRITE && read == 0) {
     retry = 1;
    }


    if (read) {
     stream->eof = (retry == 0 && errno != EAGAIN && !SSL_pending(sslsock->ssl_handle));
    }


    if (began_blocked == 0) {
     break;
    }




    if (retry) {
     if (read) {
      php_pollfd_for(sslsock->s.socket, (err == SSL_ERROR_WANT_WRITE) ?
       (POLLOUT|POLLPRI) : (POLLIN|POLLPRI), has_timeout ? &left_time : ((void*)0));
     } else {
      php_pollfd_for(sslsock->s.socket, (err == SSL_ERROR_WANT_READ) ?
       (POLLIN|POLLPRI) : (POLLOUT|POLLPRI), has_timeout ? &left_time : ((void*)0));
     }
    }
   } else {

    int err = SSL_get_error(sslsock->ssl_handle, nr_bytes);


    if (err == SSL_ERROR_NONE) {
     break;
    }


    if (began_blocked) {
     if (read) {
      php_pollfd_for(sslsock->s.socket, (err == SSL_ERROR_WANT_WRITE) ?
       (POLLOUT|POLLPRI) : (POLLIN|POLLPRI), has_timeout ? &left_time : ((void*)0));
     } else {
      php_pollfd_for(sslsock->s.socket, (err == SSL_ERROR_WANT_READ) ?
       (POLLIN|POLLPRI) : (POLLOUT|POLLPRI), has_timeout ? &left_time : ((void*)0));
     }
    }
   }


  } while (retry);


  if (nr_bytes > 0) {
   php_stream_notify_progress_increment(PHP_STREAM_CONTEXT(stream), nr_bytes, 0);
  }


  if (began_blocked && php_set_sock_blocking(sslsock->s.socket, 1) == SUCCESS) {
   sslsock->s.is_blocked = 1;
  }

  return 0 > nr_bytes ? 0 : nr_bytes;
 } else {
  size_t nr_bytes = 0;


  if (read) {
   nr_bytes = php_stream_socket_ops.read(stream, buf, count);
  } else {
   nr_bytes = php_stream_socket_ops.write(stream, buf, count);
  }

  return nr_bytes;
 }
}
