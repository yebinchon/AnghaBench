
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int oid; } ;
struct TYPE_12__ {int name; TYPE_1__ catId; } ;
struct TYPE_13__ {TYPE_2__ dobj; } ;
typedef TYPE_3__ TableInfo ;
struct TYPE_14__ {int data; } ;
typedef TYPE_4__* PQExpBuffer ;
typedef int PGresult ;
typedef int Archive ;


 int Assert (int) ;
 int * ExecuteSqlQuery (int *,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQgetlength (int *,int ,int ) ;
 char* PQgetvalue (int *,int ,int ) ;
 int PQntuples (int *) ;
 int appendBinaryPQExpBuffer (TYPE_4__*,char*,int) ;
 int appendPQExpBuffer (TYPE_4__*,char*,int ) ;
 TYPE_4__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_4__*) ;
 int fatal (char*,int ) ;

__attribute__((used)) static PQExpBuffer
createViewAsClause(Archive *fout, TableInfo *tbinfo)
{
 PQExpBuffer query = createPQExpBuffer();
 PQExpBuffer result = createPQExpBuffer();
 PGresult *res;
 int len;


 appendPQExpBuffer(query,
       "SELECT pg_catalog.pg_get_viewdef('%u'::pg_catalog.oid) AS viewdef",
       tbinfo->dobj.catId.oid);

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 if (PQntuples(res) != 1)
 {
  if (PQntuples(res) < 1)
   fatal("query to obtain definition of view \"%s\" returned no data",
      tbinfo->dobj.name);
  else
   fatal("query to obtain definition of view \"%s\" returned more than one definition",
      tbinfo->dobj.name);
 }

 len = PQgetlength(res, 0, 0);

 if (len == 0)
  fatal("definition of view \"%s\" appears to be empty (length zero)",
     tbinfo->dobj.name);


 Assert(PQgetvalue(res, 0, 0)[len - 1] == ';');
 appendBinaryPQExpBuffer(result, PQgetvalue(res, 0, 0), len - 1);

 PQclear(res);
 destroyPQExpBuffer(query);

 return result;
}
