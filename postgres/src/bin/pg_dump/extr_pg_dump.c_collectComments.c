
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int objsubid; void* objoid; void* classoid; int descr; } ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_2__ CommentItem ;
typedef int Archive ;


 int * ExecuteSqlQuery (int *,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int atoi (int ) ;
 void* atooid (int ) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 scalar_t__ pg_malloc (int) ;

__attribute__((used)) static int
collectComments(Archive *fout, CommentItem **items)
{
 PGresult *res;
 PQExpBuffer query;
 int i_description;
 int i_classoid;
 int i_objoid;
 int i_objsubid;
 int ntups;
 int i;
 CommentItem *comments;

 query = createPQExpBuffer();

 appendPQExpBufferStr(query, "SELECT description, classoid, objoid, objsubid "
       "FROM pg_catalog.pg_description "
       "ORDER BY classoid, objoid, objsubid");

 res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);



 i_description = PQfnumber(res, "description");
 i_classoid = PQfnumber(res, "classoid");
 i_objoid = PQfnumber(res, "objoid");
 i_objsubid = PQfnumber(res, "objsubid");

 ntups = PQntuples(res);

 comments = (CommentItem *) pg_malloc(ntups * sizeof(CommentItem));

 for (i = 0; i < ntups; i++)
 {
  comments[i].descr = PQgetvalue(res, i, i_description);
  comments[i].classoid = atooid(PQgetvalue(res, i, i_classoid));
  comments[i].objoid = atooid(PQgetvalue(res, i, i_objoid));
  comments[i].objsubid = atoi(PQgetvalue(res, i, i_objsubid));
 }


 destroyPQExpBuffer(query);

 *items = comments;
 return ntups;
}
