
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int StringInfo ;
typedef int Oid ;


 int DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int appendStringInfo (TYPE_1__*,char*,int ) ;
 int get_rel_name (int ) ;
 int initStringInfo (TYPE_1__*) ;
 int query_to_xml_internal (int ,int ,char const*,int,int,char const*,int) ;
 int regclassout ;

__attribute__((used)) static StringInfo
table_to_xml_internal(Oid relid,
       const char *xmlschema, bool nulls, bool tableforest,
       const char *targetns, bool top_level)
{
 StringInfoData query;

 initStringInfo(&query);
 appendStringInfo(&query, "SELECT * FROM %s",
      DatumGetCString(DirectFunctionCall1(regclassout,
               ObjectIdGetDatum(relid))));
 return query_to_xml_internal(query.data, get_rel_name(relid),
         xmlschema, nulls, tableforest,
         targetns, top_level);
}
