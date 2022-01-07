
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {char* channel_binding; int password_needed; size_t whichhost; char* pgpass; int errorMessage; int sasl_state; TYPE_1__* connhost; scalar_t__ ssl_in_use; } ;
struct TYPE_18__ {char* data; } ;
struct TYPE_17__ {char* password; } ;
typedef TYPE_2__ PQExpBufferData ;
typedef TYPE_3__ PGconn ;


 scalar_t__ PQExpBufferDataBroken (TYPE_2__) ;
 char* PQnoPasswordSupplied ;
 char* SCRAM_SHA_256_NAME ;
 char* SCRAM_SHA_256_PLUS_NAME ;
 int STATUS_ERROR ;
 int STATUS_OK ;
 int free (char*) ;
 int initPQExpBuffer (TYPE_2__*) ;
 char* libpq_gettext (char*) ;
 int pg_fe_scram_exchange (int ,int *,int,char**,int*,int*,int*) ;
 int pg_fe_scram_init (TYPE_3__*,char*,char const*) ;
 scalar_t__ pqFlush (TYPE_3__*) ;
 scalar_t__ pqGets (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ pqPutInt (int,int,TYPE_3__*) ;
 scalar_t__ pqPutMsgEnd (TYPE_3__*) ;
 scalar_t__ pqPutMsgStart (char,int,TYPE_3__*) ;
 scalar_t__ pqPutnchar (char*,int,TYPE_3__*) ;
 scalar_t__ pqPuts (char const*,TYPE_3__*) ;
 int printfPQExpBuffer (int *,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int termPQExpBuffer (TYPE_2__*) ;

__attribute__((used)) static int
pg_SASL_init(PGconn *conn, int payloadlen)
{
 char *initialresponse = ((void*)0);
 int initialresponselen;
 bool done;
 bool success;
 const char *selected_mechanism;
 PQExpBufferData mechanism_buf;
 char *password;

 initPQExpBuffer(&mechanism_buf);

 if (conn->channel_binding[0] == 'r' &&
  !conn->ssl_in_use)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("Channel binding required, but SSL not in use\n"));
  goto error;
 }

 if (conn->sasl_state)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("duplicate SASL authentication request\n"));
  goto error;
 }







 selected_mechanism = ((void*)0);
 for (;;)
 {
  if (pqGets(&mechanism_buf, conn))
  {
   printfPQExpBuffer(&conn->errorMessage,
         "fe_sendauth: invalid authentication request from server: invalid list of authentication mechanisms\n");
   goto error;
  }
  if (PQExpBufferDataBroken(mechanism_buf))
   goto oom_error;


  if (mechanism_buf.data[0] == '\0')
   break;
  if (strcmp(mechanism_buf.data, SCRAM_SHA_256_PLUS_NAME) == 0)
  {
   if (conn->ssl_in_use)
   {
    if (conn->channel_binding[0] == 'r')
    {
     printfPQExpBuffer(&conn->errorMessage,
           libpq_gettext("channel binding is required, but client does not support it\n"));
     goto error;
    }

   }
   else
   {
    printfPQExpBuffer(&conn->errorMessage,
          libpq_gettext("server offered SCRAM-SHA-256-PLUS authentication over a non-SSL connection\n"));
    goto error;
   }
  }
  else if (strcmp(mechanism_buf.data, SCRAM_SHA_256_NAME) == 0 &&
     !selected_mechanism)
   selected_mechanism = SCRAM_SHA_256_NAME;
 }

 if (!selected_mechanism)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("none of the server's SASL authentication mechanisms are supported\n"));
  goto error;
 }

 if (conn->channel_binding[0] == 'r' &&
  strcmp(selected_mechanism, SCRAM_SHA_256_PLUS_NAME) != 0)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("channel binding is required, but server did not offer an authentication method that supports channel binding\n"));
  goto error;
 }
 conn->password_needed = 1;
 password = conn->connhost[conn->whichhost].password;
 if (password == ((void*)0))
  password = conn->pgpass;
 if (password == ((void*)0) || password[0] == '\0')
 {
  printfPQExpBuffer(&conn->errorMessage,
        PQnoPasswordSupplied);
  goto error;
 }







 conn->sasl_state = pg_fe_scram_init(conn,
          password,
          selected_mechanism);
 if (!conn->sasl_state)
  goto oom_error;


 pg_fe_scram_exchange(conn->sasl_state,
       ((void*)0), -1,
       &initialresponse, &initialresponselen,
       &done, &success);

 if (done && !success)
  goto error;




 if (pqPutMsgStart('p', 1, conn))
  goto error;
 if (pqPuts(selected_mechanism, conn))
  goto error;
 if (initialresponse)
 {
  if (pqPutInt(initialresponselen, 4, conn))
   goto error;
  if (pqPutnchar(initialresponse, initialresponselen, conn))
   goto error;
 }
 if (pqPutMsgEnd(conn))
  goto error;
 if (pqFlush(conn))
  goto error;

 termPQExpBuffer(&mechanism_buf);
 if (initialresponse)
  free(initialresponse);

 return STATUS_OK;

error:
 termPQExpBuffer(&mechanism_buf);
 if (initialresponse)
  free(initialresponse);
 return STATUS_ERROR;

oom_error:
 termPQExpBuffer(&mechanism_buf);
 if (initialresponse)
  free(initialresponse);
 printfPQExpBuffer(&conn->errorMessage,
       libpq_gettext("out of memory\n"));
 return STATUS_ERROR;
}
