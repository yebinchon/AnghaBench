
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t whichhost; int errorMessage; int sslmode; TYPE_1__* connhost; } ;
struct TYPE_5__ {char* host; } ;
typedef TYPE_2__ PGconn ;


 int free (char*) ;
 int libpq_gettext (char*) ;
 int libpq_ngettext (char*,char*,int) ;
 int pgtls_verify_peer_name_matches_certificate_guts (TYPE_2__*,int*,char**) ;
 int printfPQExpBuffer (int *,int ,...) ;
 scalar_t__ strcmp (int ,char*) ;

bool
pq_verify_peer_name_matches_certificate(PGconn *conn)
{
 char *host = conn->connhost[conn->whichhost].host;
 int rc;
 int names_examined = 0;
 char *first_name = ((void*)0);





 if (strcmp(conn->sslmode, "verify-full") != 0)
  return 1;


 if (!(host && host[0] != '\0'))
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("host name must be specified for a verified SSL connection\n"));
  return 0;
 }

 rc = pgtls_verify_peer_name_matches_certificate_guts(conn, &names_examined, &first_name);

 if (rc == 0)
 {






  if (names_examined > 1)
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_ngettext("server certificate for \"%s\" (and %d other name) does not match host name \"%s\"\n",
            "server certificate for \"%s\" (and %d other names) does not match host name \"%s\"\n",
            names_examined - 1),
         first_name, names_examined - 1, host);
  }
  else if (names_examined == 1)
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("server certificate for \"%s\" does not match host name \"%s\"\n"),
         first_name, host);
  }
  else
  {
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("could not get server's host name from server certificate\n"));
  }
 }


 if (first_name)
  free(first_name);

 return (rc == 1);
}
