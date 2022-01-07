
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int ssl; } ;
typedef TYPE_1__ Port ;


 int COMMERROR ;
 scalar_t__ ECONNRESET ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERR_clear_error () ;
 unsigned long ERR_get_error () ;
 scalar_t__ EWOULDBLOCK ;






 int SSL_get_error (int ,scalar_t__) ;
 scalar_t__ SSL_write (int ,void*,size_t) ;
 int SSLerrmessage (unsigned long) ;
 int WL_SOCKET_READABLE ;
 int WL_SOCKET_WRITEABLE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 scalar_t__ errno ;

ssize_t
be_tls_write(Port *port, void *ptr, size_t len, int *waitfor)
{
 ssize_t n;
 int err;
 unsigned long ecode;

 errno = 0;
 ERR_clear_error();
 n = SSL_write(port->ssl, ptr, len);
 err = SSL_get_error(port->ssl, n);
 ecode = (err != 133 || n < 0) ? ERR_get_error() : 0;
 switch (err)
 {
  case 133:

   break;
  case 130:
   *waitfor = WL_SOCKET_READABLE;
   errno = EWOULDBLOCK;
   n = -1;
   break;
  case 129:
   *waitfor = WL_SOCKET_WRITEABLE;
   errno = EWOULDBLOCK;
   n = -1;
   break;
  case 131:

   if (n != -1)
   {
    errno = ECONNRESET;
    n = -1;
   }
   break;
  case 132:
   ereport(COMMERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("SSL error: %s", SSLerrmessage(ecode))));
   errno = ECONNRESET;
   n = -1;
   break;
  case 128:





   errno = ECONNRESET;
   n = -1;
   break;
  default:
   ereport(COMMERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("unrecognized SSL error code: %d",
       err)));
   errno = ECONNRESET;
   n = -1;
   break;
 }

 return n;
}
