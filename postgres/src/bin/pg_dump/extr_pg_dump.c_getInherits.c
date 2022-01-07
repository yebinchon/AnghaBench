
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {void* inhparent; void* inhrelid; } ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_2__ InhInfo ;
typedef int Archive ;


 int * ExecuteSqlQuery (int *,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 void* atooid (int ) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 scalar_t__ pg_malloc (int) ;

InhInfo *
getInherits(Archive *fout, int *numInherits)
{
 PGresult *res;
 int ntups;
 int i;
 PQExpBuffer query = createPQExpBuffer();
 InhInfo *inhinfo;

 int i_inhrelid;
 int i_inhparent;





 appendPQExpBufferStr(query, "SELECT inhrelid, inhparent FROM pg_inherits");

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

 ntups = PQntuples(res);

 *numInherits = ntups;

 inhinfo = (InhInfo *) pg_malloc(ntups * sizeof(InhInfo));

 i_inhrelid = PQfnumber(res, "inhrelid");
 i_inhparent = PQfnumber(res, "inhparent");

 for (i = 0; i < ntups; i++)
 {
  inhinfo[i].inhrelid = atooid(PQgetvalue(res, i, i_inhrelid));
  inhinfo[i].inhparent = atooid(PQgetvalue(res, i, i_inhparent));
 }

 PQclear(res);

 destroyPQExpBuffer(query);

 return inhinfo;
}
