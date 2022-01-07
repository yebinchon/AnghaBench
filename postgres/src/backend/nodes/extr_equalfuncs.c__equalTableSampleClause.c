
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableSampleClause ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int args ;
 int repeatable ;
 int tsmhandler ;

__attribute__((used)) static bool
_equalTableSampleClause(const TableSampleClause *a, const TableSampleClause *b)
{
 COMPARE_SCALAR_FIELD(tsmhandler);
 COMPARE_NODE_FIELD(args);
 COMPARE_NODE_FIELD(repeatable);

 return 1;
}
