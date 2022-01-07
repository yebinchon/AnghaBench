
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int db; } ;
struct TYPE_8__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int Oid ;
typedef int EditableObjectType ;




 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int * PQexec (int ,int ) ;
 int PQgetvalue (int *,int ,int ) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int appendPQExpBuffer (TYPE_1__*,char*,char*) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int appendStringLiteralConn (TYPE_1__*,char const*,int ) ;
 int atooid (int ) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int echo_hidden_command (int ) ;
 int minimal_error_message (int *) ;
 TYPE_2__ pset ;
 int strchr (char const*,char) ;

__attribute__((used)) static bool
lookup_object_oid(EditableObjectType obj_type, const char *desc,
      Oid *obj_oid)
{
 bool result = 1;
 PQExpBuffer query = createPQExpBuffer();
 PGresult *res;

 switch (obj_type)
 {
  case 129:






   appendPQExpBufferStr(query, "SELECT ");
   appendStringLiteralConn(query, desc, pset.db);
   appendPQExpBuffer(query, "::pg_catalog.%s::pg_catalog.oid",
         strchr(desc, '(') ? "regprocedure" : "regproc");
   break;

  case 128:






   appendPQExpBufferStr(query, "SELECT ");
   appendStringLiteralConn(query, desc, pset.db);
   appendPQExpBufferStr(query, "::pg_catalog.regclass::pg_catalog.oid");
   break;
 }

 if (!echo_hidden_command(query->data))
 {
  destroyPQExpBuffer(query);
  return 0;
 }
 res = PQexec(pset.db, query->data);
 if (PQresultStatus(res) == PGRES_TUPLES_OK && PQntuples(res) == 1)
  *obj_oid = atooid(PQgetvalue(res, 0, 0));
 else
 {
  minimal_error_message(res);
  result = 0;
 }

 PQclear(res);
 destroyPQExpBuffer(query);

 return result;
}
