
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pubname; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_publication ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PUBLICATIONOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 char* pstrdup (int ) ;

char *
get_publication_name(Oid pubid, bool missing_ok)
{
 HeapTuple tup;
 char *pubname;
 Form_pg_publication pubform;

 tup = SearchSysCache1(PUBLICATIONOID, ObjectIdGetDatum(pubid));

 if (!HeapTupleIsValid(tup))
 {
  if (!missing_ok)
   elog(ERROR, "cache lookup failed for publication %u", pubid);
  return ((void*)0);
 }

 pubform = (Form_pg_publication) GETSTRUCT(tup);
 pubname = pstrdup(NameStr(pubform->pubname));

 ReleaseSysCache(tup);

 return pubname;
}
