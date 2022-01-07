
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sebuf ;
struct TYPE_5__ {int errorMessage; int * peer; int ssl; } ;
typedef int PostgresPollingStatusType ;
typedef TYPE_1__ PGconn ;


 int ERR_clear_error () ;
 unsigned long ERR_get_error () ;
 int PGRES_POLLING_FAILED ;
 int PGRES_POLLING_OK ;
 int PGRES_POLLING_READING ;
 int PGRES_POLLING_WRITING ;
 int PG_STRERROR_R_BUFLEN ;
 int SOCK_ERRNO ;
 char* SOCK_STRERROR (int ,char*,int) ;




 int SSL_connect (int ) ;
 int SSL_get_error (int ,int) ;
 int * SSL_get_peer_certificate (int ) ;
 int SSLerrfree (char*) ;
 char* SSLerrmessage (unsigned long) ;
 int libpq_gettext (char*) ;
 int pgtls_close (TYPE_1__*) ;
 int pq_verify_peer_name_matches_certificate (TYPE_1__*) ;
 int printfPQExpBuffer (int *,int ,...) ;

__attribute__((used)) static PostgresPollingStatusType
open_client_SSL(PGconn *conn)
{
 int r;

 ERR_clear_error();
 r = SSL_connect(conn->ssl);
 if (r <= 0)
 {
  int err = SSL_get_error(conn->ssl, r);
  unsigned long ecode;

  ecode = ERR_get_error();
  switch (err)
  {
   case 129:
    return PGRES_POLLING_READING;

   case 128:
    return PGRES_POLLING_WRITING;

   case 130:
    {
     char sebuf[PG_STRERROR_R_BUFLEN];

     if (r == -1)
      printfPQExpBuffer(&conn->errorMessage,
            libpq_gettext("SSL SYSCALL error: %s\n"),
            SOCK_STRERROR(SOCK_ERRNO, sebuf, sizeof(sebuf)));
     else
      printfPQExpBuffer(&conn->errorMessage,
            libpq_gettext("SSL SYSCALL error: EOF detected\n"));
     pgtls_close(conn);
     return PGRES_POLLING_FAILED;
    }
   case 131:
    {
     char *err = SSLerrmessage(ecode);

     printfPQExpBuffer(&conn->errorMessage,
           libpq_gettext("SSL error: %s\n"),
           err);
     SSLerrfree(err);
     pgtls_close(conn);
     return PGRES_POLLING_FAILED;
    }

   default:
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("unrecognized SSL error code: %d\n"),
          err);
    pgtls_close(conn);
    return PGRES_POLLING_FAILED;
  }
 }







 conn->peer = SSL_get_peer_certificate(conn->ssl);
 if (conn->peer == ((void*)0))
 {
  char *err;

  err = SSLerrmessage(ERR_get_error());

  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("certificate could not be obtained: %s\n"),
        err);
  SSLerrfree(err);
  pgtls_close(conn);
  return PGRES_POLLING_FAILED;
 }

 if (!pq_verify_peer_name_matches_certificate(conn))
 {
  pgtls_close(conn);
  return PGRES_POLLING_FAILED;
 }


 return PGRES_POLLING_OK;
}
