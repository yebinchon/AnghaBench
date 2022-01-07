
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int typname; int typnamespace; int typtype; } ;
struct TYPE_6__ {char const* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_type ;





 int ERROR ;


 int GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;



 int MyDatabaseId ;

 int NameStr (int ) ;
 int ObjectIdGetDatum (int) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;




 int TYPEOID ;
 int TYPTYPE_DOMAIN ;

 int VARHDRSZ ;

 int appendStringInfo (TYPE_1__*,char*,int,...) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int elog (int ,char*,int) ;
 int get_database_name (int ) ;
 int get_namespace_name (int ) ;
 int initStringInfo (TYPE_1__*) ;
 char* map_multipart_sql_identifier_to_xml_name (char*,int ,int ,int ) ;

__attribute__((used)) static const char *
map_sql_type_to_xml_name(Oid typeoid, int typmod)
{
 StringInfoData result;

 initStringInfo(&result);

 switch (typeoid)
 {
  case 141:
   if (typmod == -1)
    appendStringInfoString(&result, "CHAR");
   else
    appendStringInfo(&result, "CHAR_%d", typmod - VARHDRSZ);
   break;
  case 129:
   if (typmod == -1)
    appendStringInfoString(&result, "VARCHAR");
   else
    appendStringInfo(&result, "VARCHAR_%d", typmod - VARHDRSZ);
   break;
  case 134:
   if (typmod == -1)
    appendStringInfoString(&result, "NUMERIC");
   else
    appendStringInfo(&result, "NUMERIC_%d_%d",
         ((typmod - VARHDRSZ) >> 16) & 0xffff,
         (typmod - VARHDRSZ) & 0xffff);
   break;
  case 136:
   appendStringInfoString(&result, "INTEGER");
   break;
  case 137:
   appendStringInfoString(&result, "SMALLINT");
   break;
  case 135:
   appendStringInfoString(&result, "BIGINT");
   break;
  case 139:
   appendStringInfoString(&result, "REAL");
   break;
  case 138:
   appendStringInfoString(&result, "DOUBLE");
   break;
  case 142:
   appendStringInfoString(&result, "BOOLEAN");
   break;
  case 133:
   if (typmod == -1)
    appendStringInfoString(&result, "TIME");
   else
    appendStringInfo(&result, "TIME_%d", typmod);
   break;
  case 130:
   if (typmod == -1)
    appendStringInfoString(&result, "TIME_WTZ");
   else
    appendStringInfo(&result, "TIME_WTZ_%d", typmod);
   break;
  case 132:
   if (typmod == -1)
    appendStringInfoString(&result, "TIMESTAMP");
   else
    appendStringInfo(&result, "TIMESTAMP_%d", typmod);
   break;
  case 131:
   if (typmod == -1)
    appendStringInfoString(&result, "TIMESTAMP_WTZ");
   else
    appendStringInfo(&result, "TIMESTAMP_WTZ_%d", typmod);
   break;
  case 140:
   appendStringInfoString(&result, "DATE");
   break;
  case 128:
   appendStringInfoString(&result, "XML");
   break;
  default:
   {
    HeapTuple tuple;
    Form_pg_type typtuple;

    tuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typeoid));
    if (!HeapTupleIsValid(tuple))
     elog(ERROR, "cache lookup failed for type %u", typeoid);
    typtuple = (Form_pg_type) GETSTRUCT(tuple);

    appendStringInfoString(&result,
            map_multipart_sql_identifier_to_xml_name((typtuple->typtype == TYPTYPE_DOMAIN) ? "Domain" : "UDT",
                    get_database_name(MyDatabaseId),
                    get_namespace_name(typtuple->typnamespace),
                    NameStr(typtuple->typname)));

    ReleaseSysCache(tuple);
   }
 }

 return result.data;
}
