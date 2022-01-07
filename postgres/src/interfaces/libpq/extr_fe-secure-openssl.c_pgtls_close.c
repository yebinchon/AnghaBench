
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ssl_in_use; int * engine; int * peer; int * ssl; } ;
typedef TYPE_1__ PGconn ;


 int ENGINE_finish (int *) ;
 int ENGINE_free (int *) ;
 int SSL_free (int *) ;
 int SSL_shutdown (int *) ;
 int X509_free (int *) ;
 int destroy_ssl_system () ;

void
pgtls_close(PGconn *conn)
{
 bool destroy_needed = 0;

 if (conn->ssl)
 {





  destroy_needed = 1;

  SSL_shutdown(conn->ssl);
  SSL_free(conn->ssl);
  conn->ssl = ((void*)0);
  conn->ssl_in_use = 0;
 }

 if (conn->peer)
 {
  X509_free(conn->peer);
  conn->peer = ((void*)0);
 }
 if (destroy_needed)
  destroy_ssl_system();
}
