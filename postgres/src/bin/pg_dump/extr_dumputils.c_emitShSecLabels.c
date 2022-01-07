
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;
typedef int PGresult ;
typedef int PGconn ;


 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (int ,char*,int ,...) ;
 int appendPQExpBufferStr (int ,char*) ;
 int appendStringLiteralConn (int ,char*,int *) ;
 int fmtId (char const*) ;

void
emitShSecLabels(PGconn *conn, PGresult *res, PQExpBuffer buffer,
    const char *objtype, const char *objname)
{
 int i;

 for (i = 0; i < PQntuples(res); i++)
 {
  char *provider = PQgetvalue(res, i, 0);
  char *label = PQgetvalue(res, i, 1);


  appendPQExpBuffer(buffer,
        "SECURITY LABEL FOR %s ON %s",
        fmtId(provider), objtype);
  appendPQExpBuffer(buffer,
        " %s IS ",
        fmtId(objname));
  appendStringLiteralConn(buffer, label, conn);
  appendPQExpBufferStr(buffer, ";\n");
 }
}
