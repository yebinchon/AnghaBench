
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_long ;
struct TYPE_4__ {int server; int disable_prepares; int emulate_prepares; } ;
typedef TYPE_1__ pdo_pgsql_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef TYPE_2__ pdo_dbh_t ;
typedef int PGresult ;
 int PGRES_TUPLES_OK ;
 char* PG_VERSION ;
 int PQbackendPID (int ) ;
 int PQclear (int *) ;
 int * PQexec (int ,char*) ;
 scalar_t__ PQgetvalue (int *,int ,int ) ;
 scalar_t__ PQparameterStatus (int ,char*) ;
 int PQprotocolVersion (int ) ;
 int PQresultStatus (int *) ;
 int PQstatus (int ) ;
 int ZVAL_BOOL (int *,int ) ;
 int ZVAL_STR (int *,int *) ;
 int ZVAL_STRING (int *,char*) ;
 int ZVAL_STRINGL (int *,char*,int) ;
 int * strpprintf (int ,char*,int,char*,char*,char*,char*) ;

__attribute__((used)) static int pdo_pgsql_get_attribute(pdo_dbh_t *dbh, zend_long attr, zval *return_value)
{
 pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;

 switch (attr) {
  case 131:
   ZVAL_BOOL(return_value, H->emulate_prepares);
   break;

  case 128:
   ZVAL_BOOL(return_value, H->disable_prepares);
   break;

  case 133:
   ZVAL_STRING(return_value, PG_VERSION);
   break;

  case 129:
   if (PQprotocolVersion(H->server) >= 3) {
    ZVAL_STRING(return_value, (char*)PQparameterStatus(H->server, "server_version"));
   } else
   {
    PGresult *res = PQexec(H->server, "SELECT VERSION()");
    if (res && PQresultStatus(res) == PGRES_TUPLES_OK) {
     ZVAL_STRING(return_value, (char *)PQgetvalue(res, 0, 0));
    }

    if (res) {
     PQclear(res);
    }
   }
   break;

  case 132:
   switch (PQstatus(H->server)) {
    case 134:
     ZVAL_STRINGL(return_value, "Waiting for connection to be made.", sizeof("Waiting for connection to be made.")-1);
     break;

    case 138:
    case 137:
     ZVAL_STRINGL(return_value, "Connection OK; waiting to send.", sizeof("Connection OK; waiting to send.")-1);
     break;

    case 140:
     ZVAL_STRINGL(return_value, "Waiting for a response from the server.", sizeof("Waiting for a response from the server.")-1);
     break;

    case 141:
     ZVAL_STRINGL(return_value, "Received authentication; waiting for backend start-up to finish.", sizeof("Received authentication; waiting for backend start-up to finish.")-1);
     break;

    case 135:
     ZVAL_STRINGL(return_value, "Negotiating SSL encryption.", sizeof("Negotiating SSL encryption.")-1);
     break;

    case 136:
     ZVAL_STRINGL(return_value, "Negotiating environment-driven parameter settings.", sizeof("Negotiating environment-driven parameter settings.")-1);
     break;

    case 139:
    default:
     ZVAL_STRINGL(return_value, "Bad connection.", sizeof("Bad connection.")-1);
     break;
   }
   break;

  case 130: {
   int spid = PQbackendPID(H->server);


   zend_string *str_info =
    strpprintf(0,
     "PID: %d; Client Encoding: %s; Is Superuser: %s; Session Authorization: %s; Date Style: %s",
     spid,
     (char*)PQparameterStatus(H->server, "client_encoding"),
     (char*)PQparameterStatus(H->server, "is_superuser"),
     (char*)PQparameterStatus(H->server, "session_authorization"),
     (char*)PQparameterStatus(H->server, "DateStyle"));

   ZVAL_STR(return_value, str_info);
  }
   break;

  default:
   return 0;
 }

 return 1;
}
