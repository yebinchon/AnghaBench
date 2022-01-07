
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int StringInfo ;
typedef int Relation ;


 int BLCKSZ ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,char*) ;
 int deparseRelation (TYPE_1__*,int ) ;
 int deparseStringLiteral (int ,int ) ;
 int initStringInfo (TYPE_1__*) ;

void
deparseAnalyzeSizeSql(StringInfo buf, Relation rel)
{
 StringInfoData relname;


 initStringInfo(&relname);
 deparseRelation(&relname, rel);

 appendStringInfoString(buf, "SELECT pg_catalog.pg_relation_size(");
 deparseStringLiteral(buf, relname.data);
 appendStringInfo(buf, "::pg_catalog.regclass) / %d", BLCKSZ);
}
