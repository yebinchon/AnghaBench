
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_2__ {int relkind; } ;
typedef int StringInfo ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int appendStringInfoString (int ,char*) ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
getRelationTypeDescription(StringInfo buffer, Oid relid, int32 objectSubId)
{
 HeapTuple relTup;
 Form_pg_class relForm;

 relTup = SearchSysCache1(RELOID,
        ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(relTup))
  elog(ERROR, "cache lookup failed for relation %u", relid);
 relForm = (Form_pg_class) GETSTRUCT(relTup);

 switch (relForm->relkind)
 {
  case 131:
  case 132:
   appendStringInfoString(buffer, "table");
   break;
  case 135:
  case 133:
   appendStringInfoString(buffer, "index");
   break;
  case 130:
   appendStringInfoString(buffer, "sequence");
   break;
  case 129:
   appendStringInfoString(buffer, "toast table");
   break;
  case 128:
   appendStringInfoString(buffer, "view");
   break;
  case 134:
   appendStringInfoString(buffer, "materialized view");
   break;
  case 137:
   appendStringInfoString(buffer, "composite type");
   break;
  case 136:
   appendStringInfoString(buffer, "foreign table");
   break;
  default:

   appendStringInfoString(buffer, "relation");
   break;
 }

 if (objectSubId != 0)
  appendStringInfoString(buffer, " column");

 ReleaseSysCache(relTup);
}
