
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
typedef int ser_context ;
typedef int php_stream ;
struct TYPE_2__ {int bsd_socket; } ;
typedef TYPE_1__ php_socket ;


 scalar_t__ FAILURE ;
 scalar_t__ IS_RESOURCE ;
 int PHP_STREAM_AS_FD ;
 int REPORT_ERRORS ;
 scalar_t__ Z_TYPE_P (int *) ;
 int do_from_zval_err (int *,char*) ;
 int php_file_le_pstream () ;
 int php_file_le_stream () ;
 int php_sockets_le_socket () ;
 scalar_t__ php_stream_cast (int *,int ,void**,int ) ;
 scalar_t__ zend_fetch_resource2_ex (int *,int *,int ,int ) ;
 scalar_t__ zend_fetch_resource_ex (int *,int *,int ) ;

__attribute__((used)) static void from_zval_write_fd_array_aux(zval *elem, unsigned i, void **args, ser_context *ctx)
{
 int *iarr = args[0];

 if (Z_TYPE_P(elem) == IS_RESOURCE) {
  php_stream *stream;
  php_socket *sock;

  sock = (php_socket *)zend_fetch_resource_ex(elem, ((void*)0), php_sockets_le_socket());
  if (sock) {
   iarr[i] = sock->bsd_socket;
   return;
  }

  stream = (php_stream *)zend_fetch_resource2_ex(elem, ((void*)0), php_file_le_stream(), php_file_le_pstream());
  if (stream == ((void*)0)) {
   do_from_zval_err(ctx, "resource is not a stream or a socket");
   return;
  }

  if (php_stream_cast(stream, PHP_STREAM_AS_FD, (void **)&iarr[i - 1],
    REPORT_ERRORS) == FAILURE) {
   do_from_zval_err(ctx, "cast stream to file descriptor failed");
   return;
  }
 } else {
  do_from_zval_err(ctx, "expected a resource variable");
 }
}
