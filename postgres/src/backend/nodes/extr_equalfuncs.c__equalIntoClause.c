
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IntoClause ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int accessMethod ;
 int colNames ;
 int onCommit ;
 int options ;
 int rel ;
 int skipData ;
 int tableSpaceName ;
 int viewQuery ;

__attribute__((used)) static bool
_equalIntoClause(const IntoClause *a, const IntoClause *b)
{
 COMPARE_NODE_FIELD(rel);
 COMPARE_NODE_FIELD(colNames);
 COMPARE_STRING_FIELD(accessMethod);
 COMPARE_NODE_FIELD(options);
 COMPARE_SCALAR_FIELD(onCommit);
 COMPARE_STRING_FIELD(tableSpaceName);
 COMPARE_NODE_FIELD(viewQuery);
 COMPARE_SCALAR_FIELD(skipData);

 return 1;
}
