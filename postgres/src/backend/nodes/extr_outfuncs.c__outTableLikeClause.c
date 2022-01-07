
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableLikeClause ;
typedef int StringInfo ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT_FIELD (int ) ;
 int options ;
 int relation ;

__attribute__((used)) static void
_outTableLikeClause(StringInfo str, const TableLikeClause *node)
{
 WRITE_NODE_TYPE("TABLELIKECLAUSE");

 WRITE_NODE_FIELD(relation);
 WRITE_UINT_FIELD(options);
}
