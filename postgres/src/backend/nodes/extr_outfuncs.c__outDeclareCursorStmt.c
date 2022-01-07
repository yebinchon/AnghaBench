
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int DeclareCursorStmt ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int options ;
 int portalname ;
 int query ;

__attribute__((used)) static void
_outDeclareCursorStmt(StringInfo str, const DeclareCursorStmt *node)
{
 WRITE_NODE_TYPE("DECLARECURSOR");

 WRITE_STRING_FIELD(portalname);
 WRITE_INT_FIELD(options);
 WRITE_NODE_FIELD(query);
}
