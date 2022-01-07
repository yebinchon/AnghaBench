
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* hostaddr; char* host; char* port; int password; void* type; } ;
typedef TYPE_1__ pg_conn_host ;
typedef int homedir ;
struct TYPE_5__ {char* pghostaddr; int nconnhost; char* pghost; char* pgport; char* pguser; char* dbName; char* pgpass; char* pgpassfile; char* channel_binding; char* sslmode; char* gssencmode; char* client_encoding_initial; char* target_session_attrs; int options_valid; int errorMessage; void* status; TYPE_1__* connhost; scalar_t__ whichhost; } ;
typedef TYPE_2__ PGconn ;


 int Assert (int) ;
 void* CHT_HOST_ADDRESS ;
 void* CHT_HOST_NAME ;
 void* CHT_UNIX_SOCKET ;
 void* CONNECTION_BAD ;
 char* DEFAULT_PGSOCKET_DIR ;
 char* DefaultChannelBinding ;
 char* DefaultGSSMode ;
 char* DefaultHost ;
 char* DefaultSSLMode ;
 int MAXPGPATH ;
 char* PGPASSFILE ;
 scalar_t__ calloc (int,int) ;
 void* count_comma_separated_elems (char*) ;
 int free (char*) ;
 scalar_t__ is_absolute_path (char*) ;
 int libpq_gettext (char*) ;
 char* malloc (int) ;
 void* parse_comma_separated_list (char**,int*) ;
 int passwordFromFile (char const*,char*,char*,char*,char*) ;
 char* pg_encoding_to_char (int ) ;
 char* pg_fe_getauthname (int *) ;
 int pg_get_encoding_from_locale (int *,int) ;
 scalar_t__ pqGetHomeDirectory (char*,int) ;
 int printfPQExpBuffer (int *,int ,...) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strdup (char*) ;

__attribute__((used)) static bool
connectOptions2(PGconn *conn)
{
 int i;






 conn->whichhost = 0;
 if (conn->pghostaddr && conn->pghostaddr[0] != '\0')
  conn->nconnhost = count_comma_separated_elems(conn->pghostaddr);
 else if (conn->pghost && conn->pghost[0] != '\0')
  conn->nconnhost = count_comma_separated_elems(conn->pghost);
 else
  conn->nconnhost = 1;
 conn->connhost = (pg_conn_host *)
  calloc(conn->nconnhost, sizeof(pg_conn_host));
 if (conn->connhost == ((void*)0))
  goto oom_error;





 if (conn->pghostaddr != ((void*)0) && conn->pghostaddr[0] != '\0')
 {
  char *s = conn->pghostaddr;
  bool more = 1;

  for (i = 0; i < conn->nconnhost && more; i++)
  {
   conn->connhost[i].hostaddr = parse_comma_separated_list(&s, &more);
   if (conn->connhost[i].hostaddr == ((void*)0))
    goto oom_error;
  }






  Assert(!more);
  Assert(i == conn->nconnhost);
 }

 if (conn->pghost != ((void*)0) && conn->pghost[0] != '\0')
 {
  char *s = conn->pghost;
  bool more = 1;

  for (i = 0; i < conn->nconnhost && more; i++)
  {
   conn->connhost[i].host = parse_comma_separated_list(&s, &more);
   if (conn->connhost[i].host == ((void*)0))
    goto oom_error;
  }


  if (more || i != conn->nconnhost)
  {
   conn->status = CONNECTION_BAD;
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("could not match %d host names to %d hostaddr values\n"),
         count_comma_separated_elems(conn->pghost), conn->nconnhost);
   return 0;
  }
 }





 for (i = 0; i < conn->nconnhost; i++)
 {
  pg_conn_host *ch = &conn->connhost[i];

  if (ch->hostaddr != ((void*)0) && ch->hostaddr[0] != '\0')
   ch->type = CHT_HOST_ADDRESS;
  else if (ch->host != ((void*)0) && ch->host[0] != '\0')
  {
   ch->type = CHT_HOST_NAME;




  }
  else
  {
   if (ch->host)
    free(ch->host);




   ch->host = strdup(DefaultHost);
   ch->type = CHT_HOST_NAME;

   if (ch->host == ((void*)0))
    goto oom_error;
  }
 }
 if (conn->pgport != ((void*)0) && conn->pgport[0] != '\0')
 {
  char *s = conn->pgport;
  bool more = 1;

  for (i = 0; i < conn->nconnhost && more; i++)
  {
   conn->connhost[i].port = parse_comma_separated_list(&s, &more);
   if (conn->connhost[i].port == ((void*)0))
    goto oom_error;
  }





  if (i == 1 && !more)
  {
   for (i = 1; i < conn->nconnhost; i++)
   {
    conn->connhost[i].port = strdup(conn->connhost[0].port);
    if (conn->connhost[i].port == ((void*)0))
     goto oom_error;
   }
  }
  else if (more || i != conn->nconnhost)
  {
   conn->status = CONNECTION_BAD;
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("could not match %d port numbers to %d hosts\n"),
         count_comma_separated_elems(conn->pgport), conn->nconnhost);
   return 0;
  }
 }






 if (conn->pguser == ((void*)0) || conn->pguser[0] == '\0')
 {
  if (conn->pguser)
   free(conn->pguser);
  conn->pguser = pg_fe_getauthname(&conn->errorMessage);
  if (!conn->pguser)
  {
   conn->status = CONNECTION_BAD;
   return 0;
  }
 }




 if (conn->dbName == ((void*)0) || conn->dbName[0] == '\0')
 {
  if (conn->dbName)
   free(conn->dbName);
  conn->dbName = strdup(conn->pguser);
  if (!conn->dbName)
   goto oom_error;
 }





 if (conn->pgpass == ((void*)0) || conn->pgpass[0] == '\0')
 {

  if (conn->pgpassfile == ((void*)0) || conn->pgpassfile[0] == '\0')
  {
   char homedir[MAXPGPATH];

   if (pqGetHomeDirectory(homedir, sizeof(homedir)))
   {
    if (conn->pgpassfile)
     free(conn->pgpassfile);
    conn->pgpassfile = malloc(MAXPGPATH);
    if (!conn->pgpassfile)
     goto oom_error;
    snprintf(conn->pgpassfile, MAXPGPATH, "%s/%s",
       homedir, PGPASSFILE);
   }
  }

  if (conn->pgpassfile != ((void*)0) && conn->pgpassfile[0] != '\0')
  {
   for (i = 0; i < conn->nconnhost; i++)
   {





    const char *pwhost = conn->connhost[i].host;

    if (pwhost == ((void*)0) || pwhost[0] == '\0')
     pwhost = conn->connhost[i].hostaddr;

    conn->connhost[i].password =
     passwordFromFile(pwhost,
          conn->connhost[i].port,
          conn->dbName,
          conn->pguser,
          conn->pgpassfile);
   }
  }
 }




 if (conn->channel_binding)
 {
  if (strcmp(conn->channel_binding, "disable") != 0
   && strcmp(conn->channel_binding, "prefer") != 0
   && strcmp(conn->channel_binding, "require") != 0)
  {
   conn->status = CONNECTION_BAD;
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("invalid channel_binding value: \"%s\"\n"),
         conn->channel_binding);
   return 0;
  }
 }
 else
 {
  conn->channel_binding = strdup(DefaultChannelBinding);
  if (!conn->channel_binding)
   goto oom_error;
 }




 if (conn->sslmode)
 {
  if (strcmp(conn->sslmode, "disable") != 0
   && strcmp(conn->sslmode, "allow") != 0
   && strcmp(conn->sslmode, "prefer") != 0
   && strcmp(conn->sslmode, "require") != 0
   && strcmp(conn->sslmode, "verify-ca") != 0
   && strcmp(conn->sslmode, "verify-full") != 0)
  {
   conn->status = CONNECTION_BAD;
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("invalid sslmode value: \"%s\"\n"),
         conn->sslmode);
   return 0;
  }


  switch (conn->sslmode[0])
  {
   case 'a':
   case 'p':





    break;

   case 'r':
   case 'v':
    conn->status = CONNECTION_BAD;
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("sslmode value \"%s\" invalid when SSL support is not compiled in\n"),
          conn->sslmode);
    return 0;
  }

 }
 else
 {
  conn->sslmode = strdup(DefaultSSLMode);
  if (!conn->sslmode)
   goto oom_error;
 }




 if (conn->gssencmode)
 {
  if (strcmp(conn->gssencmode, "disable") != 0 &&
   strcmp(conn->gssencmode, "prefer") != 0 &&
   strcmp(conn->gssencmode, "require") != 0)
  {
   conn->status = CONNECTION_BAD;
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("invalid gssencmode value: \"%s\"\n"),
         conn->gssencmode);
   return 0;
  }

  if (strcmp(conn->gssencmode, "require") == 0)
  {
   conn->status = CONNECTION_BAD;
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("gssencmode value \"%s\" invalid when GSSAPI support is not compiled in\n"),
         conn->gssencmode);
   return 0;
  }

 }
 else
 {
  conn->gssencmode = strdup(DefaultGSSMode);
  if (!conn->gssencmode)
   goto oom_error;
 }




 if (conn->client_encoding_initial &&
  strcmp(conn->client_encoding_initial, "auto") == 0)
 {
  free(conn->client_encoding_initial);
  conn->client_encoding_initial = strdup(pg_encoding_to_char(pg_get_encoding_from_locale(((void*)0), 1)));
  if (!conn->client_encoding_initial)
   goto oom_error;
 }




 if (conn->target_session_attrs)
 {
  if (strcmp(conn->target_session_attrs, "any") != 0
   && strcmp(conn->target_session_attrs, "read-write") != 0)
  {
   conn->status = CONNECTION_BAD;
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("invalid target_session_attrs value: \"%s\"\n"),
         conn->target_session_attrs);
   return 0;
  }
 }






 conn->options_valid = 1;

 return 1;

oom_error:
 conn->status = CONNECTION_BAD;
 printfPQExpBuffer(&conn->errorMessage,
       libpq_gettext("out of memory\n"));
 return 0;
}
