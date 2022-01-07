
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TableLikeClause ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int options ;
 int relation ;

__attribute__((used)) static bool
_equalTableLikeClause(const TableLikeClause *a, const TableLikeClause *b)
{
 COMPARE_NODE_FIELD(relation);
 COMPARE_SCALAR_FIELD(options);

 return 1;
}
