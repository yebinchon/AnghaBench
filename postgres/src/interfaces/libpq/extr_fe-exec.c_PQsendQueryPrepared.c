
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int errorMessage; } ;
typedef TYPE_1__ PGconn ;


 int PQsendQueryGuts (TYPE_1__*,int *,char const*,int,int *,char const* const*,int const*,int const*,int) ;
 int PQsendQueryStart (TYPE_1__*) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (int *,int ) ;

int
PQsendQueryPrepared(PGconn *conn,
     const char *stmtName,
     int nParams,
     const char *const *paramValues,
     const int *paramLengths,
     const int *paramFormats,
     int resultFormat)
{
 if (!PQsendQueryStart(conn))
  return 0;


 if (!stmtName)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("statement name is a null pointer\n"));
  return 0;
 }
 if (nParams < 0 || nParams > 65535)
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("number of parameters must be between 0 and 65535\n"));
  return 0;
 }

 return PQsendQueryGuts(conn,
         ((void*)0),
         stmtName,
         nParams,
         ((void*)0),
         paramValues,
         paramLengths,
         paramFormats,
         resultFormat);
}
