
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DeclareCursorStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int options ;
 int portalname ;
 int query ;

__attribute__((used)) static bool
_equalDeclareCursorStmt(const DeclareCursorStmt *a, const DeclareCursorStmt *b)
{
 COMPARE_STRING_FIELD(portalname);
 COMPARE_SCALAR_FIELD(options);
 COMPARE_NODE_FIELD(query);

 return 1;
}
