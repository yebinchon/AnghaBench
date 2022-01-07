
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int query ;
typedef int qbuf ;
struct TYPE_9__ {scalar_t__ status; int pversion; } ;
struct TYPE_8__ {scalar_t__ resultStatus; } ;
typedef TYPE_1__ PGresult ;
typedef TYPE_2__ PGconn ;


 scalar_t__ CONNECTION_OK ;
 scalar_t__ PGRES_COMMAND_OK ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int PQclear (TYPE_1__*) ;
 TYPE_1__* PQexec (TYPE_2__*,char*) ;
 char* pg_encoding_to_char (int ) ;
 int pg_get_encoding_from_locale (int *,int) ;
 int pqSaveParameterStatus (TYPE_2__*,char*,char const*) ;
 int sprintf (char*,char const*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

int
PQsetClientEncoding(PGconn *conn, const char *encoding)
{
 char qbuf[128];
 static const char query[] = "set client_encoding to '%s'";
 PGresult *res;
 int status;

 if (!conn || conn->status != CONNECTION_OK)
  return -1;

 if (!encoding)
  return -1;


 if (strcmp(encoding, "auto") == 0)
  encoding = pg_encoding_to_char(pg_get_encoding_from_locale(((void*)0), 1));


 if (sizeof(qbuf) < (sizeof(query) + strlen(encoding)))
  return -1;


 sprintf(qbuf, query, encoding);
 res = PQexec(conn, qbuf);

 if (res == ((void*)0))
  return -1;
 if (res->resultStatus != PGRES_COMMAND_OK)
  status = -1;
 else
 {






  if (PG_PROTOCOL_MAJOR(conn->pversion) < 3)
   pqSaveParameterStatus(conn, "client_encoding", encoding);
  status = 0;
 }
 PQclear(res);
 return status;
}
