
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relkind; int relname; int relnamespace; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 scalar_t__ RelationIsVisible (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int _ (char*) ;
 int appendStringInfo (int ,int ,char*) ;
 int elog (int ,char*,int ) ;
 char* get_namespace_name (int ) ;
 char* quote_qualified_identifier (char*,int ) ;

__attribute__((used)) static void
getRelationDescription(StringInfo buffer, Oid relid)
{
 HeapTuple relTup;
 Form_pg_class relForm;
 char *nspname;
 char *relname;

 relTup = SearchSysCache1(RELOID,
        ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(relTup))
  elog(ERROR, "cache lookup failed for relation %u", relid);
 relForm = (Form_pg_class) GETSTRUCT(relTup);


 if (RelationIsVisible(relid))
  nspname = ((void*)0);
 else
  nspname = get_namespace_name(relForm->relnamespace);

 relname = quote_qualified_identifier(nspname, NameStr(relForm->relname));

 switch (relForm->relkind)
 {
  case 131:
  case 132:
   appendStringInfo(buffer, _("table %s"),
        relname);
   break;
  case 135:
  case 133:
   appendStringInfo(buffer, _("index %s"),
        relname);
   break;
  case 130:
   appendStringInfo(buffer, _("sequence %s"),
        relname);
   break;
  case 129:
   appendStringInfo(buffer, _("toast table %s"),
        relname);
   break;
  case 128:
   appendStringInfo(buffer, _("view %s"),
        relname);
   break;
  case 134:
   appendStringInfo(buffer, _("materialized view %s"),
        relname);
   break;
  case 137:
   appendStringInfo(buffer, _("composite type %s"),
        relname);
   break;
  case 136:
   appendStringInfo(buffer, _("foreign table %s"),
        relname);
   break;
  default:

   appendStringInfo(buffer, _("relation %s"),
        relname);
   break;
 }

 ReleaseSysCache(relTup);
}
