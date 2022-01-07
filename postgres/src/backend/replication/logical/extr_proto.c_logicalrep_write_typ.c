
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typname; int typnamespace; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 int elog (int ,char*,int ) ;
 int getBaseType (int ) ;
 int logicalrep_write_namespace (int ,int ) ;
 int pq_sendbyte (int ,char) ;
 int pq_sendint32 (int ,int ) ;
 int pq_sendstring (int ,int ) ;

void
logicalrep_write_typ(StringInfo out, Oid typoid)
{
 Oid basetypoid = getBaseType(typoid);
 HeapTuple tup;
 Form_pg_type typtup;

 pq_sendbyte(out, 'Y');

 tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(basetypoid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for type %u", basetypoid);
 typtup = (Form_pg_type) GETSTRUCT(tup);


 pq_sendint32(out, typoid);


 logicalrep_write_namespace(out, typtup->typnamespace);
 pq_sendstring(out, NameStr(typtup->typname));

 ReleaseSysCache(tup);
}
