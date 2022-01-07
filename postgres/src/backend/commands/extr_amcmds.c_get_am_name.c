
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int amname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_am ;


 int AMOID ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 char* pstrdup (int ) ;

char *
get_am_name(Oid amOid)
{
 HeapTuple tup;
 char *result = ((void*)0);

 tup = SearchSysCache1(AMOID, ObjectIdGetDatum(amOid));
 if (HeapTupleIsValid(tup))
 {
  Form_pg_am amform = (Form_pg_am) GETSTRUCT(tup);

  result = pstrdup(NameStr(amform->amname));
  ReleaseSysCache(tup);
 }
 return result;
}
