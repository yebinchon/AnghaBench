
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CopyStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int attlist ;
 int filename ;
 int is_from ;
 int is_program ;
 int options ;
 int query ;
 int relation ;
 int whereClause ;

__attribute__((used)) static bool
_equalCopyStmt(const CopyStmt *a, const CopyStmt *b)
{
 COMPARE_NODE_FIELD(relation);
 COMPARE_NODE_FIELD(query);
 COMPARE_NODE_FIELD(attlist);
 COMPARE_SCALAR_FIELD(is_from);
 COMPARE_SCALAR_FIELD(is_program);
 COMPARE_STRING_FIELD(filename);
 COMPARE_NODE_FIELD(options);
 COMPARE_NODE_FIELD(whereClause);

 return 1;
}
