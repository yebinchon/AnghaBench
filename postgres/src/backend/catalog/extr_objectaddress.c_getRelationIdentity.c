
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relname; int relnamespace; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int appendStringInfoString (int ,int ) ;
 int elog (int ,char*,int ) ;
 char* get_namespace_name_or_temp (int ) ;
 int * list_make2 (char*,int ) ;
 int pstrdup (int ) ;
 int quote_qualified_identifier (char*,int ) ;

__attribute__((used)) static void
getRelationIdentity(StringInfo buffer, Oid relid, List **object)
{
 HeapTuple relTup;
 Form_pg_class relForm;
 char *schema;

 relTup = SearchSysCache1(RELOID,
        ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(relTup))
  elog(ERROR, "cache lookup failed for relation %u", relid);
 relForm = (Form_pg_class) GETSTRUCT(relTup);

 schema = get_namespace_name_or_temp(relForm->relnamespace);
 appendStringInfoString(buffer,
         quote_qualified_identifier(schema,
               NameStr(relForm->relname)));
 if (object)
  *object = list_make2(schema, pstrdup(NameStr(relForm->relname)));

 ReleaseSysCache(relTup);
}
