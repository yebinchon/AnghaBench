
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ssl_in_use; char* peer_cn; int peer_cert_valid; int * peer; scalar_t__ ssl; int sock; int noblock; } ;
typedef TYPE_1__ Port ;


 int Assert (int) ;
 int COMMERROR ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERR_clear_error () ;
 unsigned long ERR_get_error () ;
 char* MemoryContextAlloc (int ,int) ;
 int MyLatch ;
 int NID_commonName ;
 int SSL_CTX_set_info_callback (int ,int ) ;





 int SSL_accept (scalar_t__) ;
 int SSL_context ;
 int SSL_get_error (scalar_t__,int) ;
 int * SSL_get_peer_certificate (scalar_t__) ;
 scalar_t__ SSL_new (int ) ;
 int SSLerrmessage (unsigned long) ;
 int TopMemoryContext ;
 int WAIT_EVENT_SSL_OPEN_SERVER ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_SOCKET_READABLE ;
 int WL_SOCKET_WRITEABLE ;
 int WaitLatchOrSocket (int ,int,int ,int ,int ) ;
 int X509_NAME_get_text_by_NID (int ,int ,char*,int) ;
 int X509_get_subject_name (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_socket_access () ;
 int errmsg (char*,...) ;
 int info_cb ;
 int my_SSL_set_fd (TYPE_1__*,int ) ;
 int pfree (char*) ;
 int strlen (char*) ;

int
be_tls_open_server(Port *port)
{
 int r;
 int err;
 int waitfor;
 unsigned long ecode;

 Assert(!port->ssl);
 Assert(!port->peer);

 if (!SSL_context)
 {
  ereport(COMMERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("could not initialize SSL connection: SSL context not set up")));
  return -1;
 }

 if (!(port->ssl = SSL_new(SSL_context)))
 {
  ereport(COMMERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("could not initialize SSL connection: %s",
      SSLerrmessage(ERR_get_error()))));
  return -1;
 }
 if (!my_SSL_set_fd(port, port->sock))
 {
  ereport(COMMERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("could not set SSL socket: %s",
      SSLerrmessage(ERR_get_error()))));
  return -1;
 }
 port->ssl_in_use = 1;

aloop:
 ERR_clear_error();
 r = SSL_accept(port->ssl);
 if (r <= 0)
 {
  err = SSL_get_error(port->ssl, r);
  ecode = ERR_get_error();
  switch (err)
  {
   case 130:
   case 129:

    Assert(!port->noblock);






    if (err == 130)
     waitfor = WL_SOCKET_READABLE | WL_EXIT_ON_PM_DEATH;
    else
     waitfor = WL_SOCKET_WRITEABLE | WL_EXIT_ON_PM_DEATH;

    (void) WaitLatchOrSocket(MyLatch, waitfor, port->sock, 0,
           WAIT_EVENT_SSL_OPEN_SERVER);
    goto aloop;
   case 131:
    if (r < 0)
     ereport(COMMERROR,
       (errcode_for_socket_access(),
        errmsg("could not accept SSL connection: %m")));
    else
     ereport(COMMERROR,
       (errcode(ERRCODE_PROTOCOL_VIOLATION),
        errmsg("could not accept SSL connection: EOF detected")));
    break;
   case 132:
    ereport(COMMERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("could not accept SSL connection: %s",
        SSLerrmessage(ecode))));
    break;
   case 128:
    ereport(COMMERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("could not accept SSL connection: EOF detected")));
    break;
   default:
    ereport(COMMERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("unrecognized SSL error code: %d",
        err)));
    break;
  }
  return -1;
 }


 port->peer = SSL_get_peer_certificate(port->ssl);


 port->peer_cn = ((void*)0);
 port->peer_cert_valid = 0;
 if (port->peer != ((void*)0))
 {
  int len;

  len = X509_NAME_get_text_by_NID(X509_get_subject_name(port->peer),
          NID_commonName, ((void*)0), 0);
  if (len != -1)
  {
   char *peer_cn;

   peer_cn = MemoryContextAlloc(TopMemoryContext, len + 1);
   r = X509_NAME_get_text_by_NID(X509_get_subject_name(port->peer),
            NID_commonName, peer_cn, len + 1);
   peer_cn[len] = '\0';
   if (r != len)
   {

    pfree(peer_cn);
    return -1;
   }





   if (len != strlen(peer_cn))
   {
    ereport(COMMERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("SSL certificate's common name contains embedded null")));
    pfree(peer_cn);
    return -1;
   }

   port->peer_cn = peer_cn;
  }
  port->peer_cert_valid = 1;
 }


 SSL_CTX_set_info_callback(SSL_context, info_cb);

 return 0;
}
