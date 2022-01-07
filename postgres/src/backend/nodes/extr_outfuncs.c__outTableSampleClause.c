
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableSampleClause ;
typedef int StringInfo ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int args ;
 int repeatable ;
 int tsmhandler ;

__attribute__((used)) static void
_outTableSampleClause(StringInfo str, const TableSampleClause *node)
{
 WRITE_NODE_TYPE("TABLESAMPLECLAUSE");

 WRITE_OID_FIELD(tsmhandler);
 WRITE_NODE_FIELD(args);
 WRITE_NODE_FIELD(repeatable);
}
