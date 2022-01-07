
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typname; int typnamespace; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PG_DIAG_DATATYPE_NAME ;
 int PG_DIAG_SCHEMA_NAME ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 int elog (int ,char*,int ) ;
 int err_generic_string (int ,int ) ;
 int get_namespace_name (int ) ;

int
errdatatype(Oid datatypeOid)
{
 HeapTuple tup;
 Form_pg_type typtup;

 tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(datatypeOid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for type %u", datatypeOid);
 typtup = (Form_pg_type) GETSTRUCT(tup);

 err_generic_string(PG_DIAG_SCHEMA_NAME,
        get_namespace_name(typtup->typnamespace));
 err_generic_string(PG_DIAG_DATATYPE_NAME, NameStr(typtup->typname));

 ReleaseSysCache(tup);

 return 0;
}
