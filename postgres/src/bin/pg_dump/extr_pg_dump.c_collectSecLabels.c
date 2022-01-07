
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
struct TYPE_7__ {int objsubid; void* objoid; void* classoid; void* provider; void* label; } ;
typedef TYPE_1__ SecLabelItem ;
typedef TYPE_2__* PQExpBuffer ;
typedef int PGresult ;
typedef int Archive ;


 int * ExecuteSqlQuery (int *,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQfnumber (int *,char*) ;
 void* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBufferStr (TYPE_2__*,char*) ;
 int atoi (void*) ;
 void* atooid (void*) ;
 TYPE_2__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_2__*) ;
 scalar_t__ pg_malloc (int) ;

__attribute__((used)) static int
collectSecLabels(Archive *fout, SecLabelItem **items)
{
 PGresult *res;
 PQExpBuffer query;
 int i_label;
 int i_provider;
 int i_classoid;
 int i_objoid;
 int i_objsubid;
 int ntups;
 int i;
 SecLabelItem *labels;

 query = createPQExpBuffer();

 appendPQExpBufferStr(query,
       "SELECT label, provider, classoid, objoid, objsubid "
       "FROM pg_catalog.pg_seclabel "
       "ORDER BY classoid, objoid, objsubid");

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);


 i_label = PQfnumber(res, "label");
 i_provider = PQfnumber(res, "provider");
 i_classoid = PQfnumber(res, "classoid");
 i_objoid = PQfnumber(res, "objoid");
 i_objsubid = PQfnumber(res, "objsubid");

 ntups = PQntuples(res);

 labels = (SecLabelItem *) pg_malloc(ntups * sizeof(SecLabelItem));

 for (i = 0; i < ntups; i++)
 {
  labels[i].label = PQgetvalue(res, i, i_label);
  labels[i].provider = PQgetvalue(res, i, i_provider);
  labels[i].classoid = atooid(PQgetvalue(res, i, i_classoid));
  labels[i].objoid = atooid(PQgetvalue(res, i, i_objoid));
  labels[i].objsubid = atoi(PQgetvalue(res, i, i_objsubid));
 }


 destroyPQExpBuffer(query);

 *items = labels;
 return ntups;
}
