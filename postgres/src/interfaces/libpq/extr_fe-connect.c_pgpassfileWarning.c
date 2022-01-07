
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t whichhost; int pgpassfile; int errorMessage; scalar_t__ result; TYPE_1__* connhost; scalar_t__ password_needed; } ;
struct TYPE_4__ {int * password; } ;
typedef TYPE_2__ PGconn ;


 int ERRCODE_INVALID_PASSWORD ;
 int PG_DIAG_SQLSTATE ;
 char* PQresultErrorField (scalar_t__,int ) ;
 int appendPQExpBuffer (int *,int ,int ) ;
 int libpq_gettext (char*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static void
pgpassfileWarning(PGconn *conn)
{


 if (conn->password_needed &&
  conn->connhost[conn->whichhost].password != ((void*)0) &&
  conn->result)
 {
  const char *sqlstate = PQresultErrorField(conn->result,
              PG_DIAG_SQLSTATE);

  if (sqlstate && strcmp(sqlstate, ERRCODE_INVALID_PASSWORD) == 0)
   appendPQExpBuffer(&conn->errorMessage,
         libpq_gettext("password retrieved from file \"%s\"\n"),
         conn->pgpassfile);
 }
}
