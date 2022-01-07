
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int datname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_database ;


 int DATABASEOID ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 char* pstrdup (int ) ;

char *
get_database_name(Oid dbid)
{
 HeapTuple dbtuple;
 char *result;

 dbtuple = SearchSysCache1(DATABASEOID, ObjectIdGetDatum(dbid));
 if (HeapTupleIsValid(dbtuple))
 {
  result = pstrdup(NameStr(((Form_pg_database) GETSTRUCT(dbtuple))->datname));
  ReleaseSysCache(dbtuple);
 }
 else
  result = ((void*)0);

 return result;
}
