
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssl_in_use; int * peer_cn; int * peer; int * ssl; } ;
typedef TYPE_1__ Port ;


 int SSL_free (int *) ;
 int SSL_shutdown (int *) ;
 int X509_free (int *) ;
 int pfree (int *) ;

void
be_tls_close(Port *port)
{
 if (port->ssl)
 {
  SSL_shutdown(port->ssl);
  SSL_free(port->ssl);
  port->ssl = ((void*)0);
  port->ssl_in_use = 0;
 }

 if (port->peer)
 {
  X509_free(port->peer);
  port->peer = ((void*)0);
 }

 if (port->peer_cn)
 {
  pfree(port->peer_cn);
  port->peer_cn = ((void*)0);
 }
}
