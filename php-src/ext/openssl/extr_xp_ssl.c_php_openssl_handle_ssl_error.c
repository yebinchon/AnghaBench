
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zend_bool ;
struct TYPE_12__ {int s; int member_0; } ;
typedef TYPE_2__ smart_str ;
struct TYPE_13__ {int eof; scalar_t__ abstract; } ;
typedef TYPE_3__ php_stream ;
struct TYPE_11__ {int is_blocked; } ;
struct TYPE_14__ {int ssl_handle; TYPE_1__ s; } ;
typedef TYPE_4__ php_openssl_netstream_data_t ;
typedef int esbuf ;


 int EAGAIN ;
 int ERR_GET_REASON (unsigned long) ;
 int ERR_error_string_n (unsigned long,char*,int) ;
 unsigned long ERR_get_error () ;
 int ERR_peek_error () ;
 int E_WARNING ;




 int SSL_RECEIVED_SHUTDOWN ;

 int SSL_SENT_SHUTDOWN ;
 int SSL_get_error (int ,int) ;
 int SSL_set_shutdown (int ,int) ;
 char* ZSTR_VAL (int ) ;
 int efree (char*) ;
 int errno ;
 int php_error_docref (int *,int ,char*,...) ;
 int php_openssl_is_http_stream_talking_to_iis (TYPE_3__*) ;
 int php_socket_errno () ;
 char* php_socket_strerror (int ,int *,int ) ;
 int smart_str_0 (TYPE_2__*) ;
 int smart_str_appendc (TYPE_2__*,char) ;
 int smart_str_appends (TYPE_2__*,char*) ;
 int smart_str_free (TYPE_2__*) ;

__attribute__((used)) static int php_openssl_handle_ssl_error(php_stream *stream, int nr_bytes, zend_bool is_init)
{
 php_openssl_netstream_data_t *sslsock = (php_openssl_netstream_data_t*)stream->abstract;
 int err = SSL_get_error(sslsock->ssl_handle, nr_bytes);
 char esbuf[512];
 smart_str ebuf = {0};
 unsigned long ecode;
 int retry = 1;

 switch(err) {
  case 129:

   retry = 0;
   break;
  case 131:
  case 130:


   errno = EAGAIN;
   retry = is_init ? 1 : sslsock->s.is_blocked;
   break;
  case 132:
   if (ERR_peek_error() == 0) {
    if (nr_bytes == 0) {
     if (!php_openssl_is_http_stream_talking_to_iis(stream) && ERR_get_error() != 0) {
      php_error_docref(((void*)0), E_WARNING, "SSL: fatal protocol error");
     }
     SSL_set_shutdown(sslsock->ssl_handle, SSL_SENT_SHUTDOWN|SSL_RECEIVED_SHUTDOWN);
     stream->eof = 1;
     retry = 0;
    } else {
     char *estr = php_socket_strerror(php_socket_errno(), ((void*)0), 0);

     php_error_docref(((void*)0), E_WARNING,
       "SSL: %s", estr);

     efree(estr);
     retry = 0;
    }
    break;
   }



  default:

   ecode = ERR_get_error();

   switch (ERR_GET_REASON(ecode)) {
    case 128:
     php_error_docref(((void*)0), E_WARNING,
       "SSL_R_NO_SHARED_CIPHER: no suitable shared cipher could be used.  "
       "This could be because the server is missing an SSL certificate "
       "(local_cert context option)");
     retry = 0;
     break;

    default:
     do {

      ERR_error_string_n(ecode, esbuf, sizeof(esbuf));
      if (ebuf.s) {
       smart_str_appendc(&ebuf, '\n');
      }
      smart_str_appends(&ebuf, esbuf);
     } while ((ecode = ERR_get_error()) != 0);

     smart_str_0(&ebuf);

     php_error_docref(((void*)0), E_WARNING,
       "SSL operation failed with code %d. %s%s",
       err,
       ebuf.s ? "OpenSSL Error messages:\n" : "",
       ebuf.s ? ZSTR_VAL(ebuf.s) : "");
     if (ebuf.s) {
      smart_str_free(&ebuf);
     }
   }

   retry = 0;
   errno = 0;
 }
 return retry;
}
