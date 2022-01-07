
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int len; } ;
struct TYPE_15__ {int password_needed; size_t whichhost; char* pgpass; TYPE_3__ errorMessage; int * sasl_state; TYPE_1__* connhost; int usesspi; int gsslib; } ;
struct TYPE_14__ {char* password; } ;
typedef TYPE_2__ PGconn ;
typedef int AuthRequest ;
 int PQnoPasswordSupplied ;
 int STATUS_ERROR ;
 int STATUS_OK ;
 int check_expected_areq (int,TYPE_2__*) ;
 int libpq_gettext (char*) ;
 int pg_GSS_continue (TYPE_2__*,int) ;
 int pg_GSS_startup (TYPE_2__*,int) ;
 int pg_SASL_continue (TYPE_2__*,int,int) ;
 int pg_SASL_init (TYPE_2__*,int) ;
 int pg_SSPI_continue (TYPE_2__*,int) ;
 int pg_SSPI_startup (TYPE_2__*,int,int) ;
 int pg_local_sendauth (TYPE_2__*) ;
 int pg_password_sendauth (TYPE_2__*,char*,int) ;
 int pg_strcasecmp (int ,char*) ;
 int pglock_thread () ;
 int pgunlock_thread () ;
 int printfPQExpBuffer (TYPE_3__*,char*,...) ;

int
pg_fe_sendauth(AuthRequest areq, int payloadlen, PGconn *conn)
{
 if (!check_expected_areq(areq, conn))
  return STATUS_ERROR;

 switch (areq)
 {
  case 134:
   break;

  case 137:
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("Kerberos 4 authentication not supported\n"));
   return STATUS_ERROR;

  case 136:
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("Kerberos 5 authentication not supported\n"));
   return STATUS_ERROR;
  case 139:
  case 138:
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("GSSAPI authentication not supported\n"));
   return STATUS_ERROR;
  case 128:
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("SSPI authentication not supported\n"));
   return STATUS_ERROR;




  case 140:
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("Crypt authentication not supported\n"));
   return STATUS_ERROR;

  case 135:
  case 133:
   {
    char *password;

    conn->password_needed = 1;
    password = conn->connhost[conn->whichhost].password;
    if (password == ((void*)0))
     password = conn->pgpass;
    if (password == ((void*)0) || password[0] == '\0')
    {
     printfPQExpBuffer(&conn->errorMessage,
           PQnoPasswordSupplied);
     return STATUS_ERROR;
    }
    if (pg_password_sendauth(conn, password, areq) != STATUS_OK)
    {
     printfPQExpBuffer(&conn->errorMessage,
           "fe_sendauth: error sending password authentication\n");
     return STATUS_ERROR;
    }
    break;
   }

  case 132:





   if (pg_SASL_init(conn, payloadlen) != STATUS_OK)
   {

    return STATUS_ERROR;
   }
   break;

  case 131:
  case 130:
   if (conn->sasl_state == ((void*)0))
   {
    printfPQExpBuffer(&conn->errorMessage,
          "fe_sendauth: invalid authentication request from server: AUTH_REQ_SASL_CONT without AUTH_REQ_SASL\n");
    return STATUS_ERROR;
   }
   if (pg_SASL_continue(conn, payloadlen,
         (areq == 130)) != STATUS_OK)
   {

    if (conn->errorMessage.len == 0)
     printfPQExpBuffer(&conn->errorMessage,
           "fe_sendauth: error in SASL authentication\n");
    return STATUS_ERROR;
   }
   break;

  case 129:
   if (pg_local_sendauth(conn) != STATUS_OK)
    return STATUS_ERROR;
   break;

  default:
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("authentication method %u not supported\n"), areq);
   return STATUS_ERROR;
 }

 return STATUS_OK;
}
