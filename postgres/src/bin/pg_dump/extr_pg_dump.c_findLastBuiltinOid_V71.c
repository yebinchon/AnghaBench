
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int Oid ;
typedef int Archive ;


 int * ExecuteSqlQueryForSingleRow (int *,char*) ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int ,int ) ;
 int atooid (int ) ;

__attribute__((used)) static Oid
findLastBuiltinOid_V71(Archive *fout)
{
 PGresult *res;
 Oid last_oid;

 res = ExecuteSqlQueryForSingleRow(fout,
           "SELECT datlastsysoid FROM pg_database WHERE datname = current_database()");
 last_oid = atooid(PQgetvalue(res, 0, PQfnumber(res, "datlastsysoid")));
 PQclear(res);

 return last_oid;
}
