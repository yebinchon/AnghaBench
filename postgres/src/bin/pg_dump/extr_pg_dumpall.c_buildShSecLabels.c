
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef int PGconn ;
typedef int Oid ;


 int PQclear (int *) ;
 int buildShSecLabelQuery (int *,char const*,int ,TYPE_1__*) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 int emitShSecLabels (int *,int *,TYPE_1__*,char const*,char const*) ;
 int * executeQuery (int *,int ) ;

__attribute__((used)) static void
buildShSecLabels(PGconn *conn, const char *catalog_name, Oid objectId,
     const char *objtype, const char *objname,
     PQExpBuffer buffer)
{
 PQExpBuffer sql = createPQExpBuffer();
 PGresult *res;

 buildShSecLabelQuery(conn, catalog_name, objectId, sql);
 res = executeQuery(conn, sql->data);
 emitShSecLabels(conn, res, buffer, objtype, objname);

 PQclear(res);
 destroyPQExpBuffer(sql);
}
