
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WindowDef ;
typedef int StringInfo ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int endOffset ;
 int frameOptions ;
 int location ;
 int name ;
 int orderClause ;
 int partitionClause ;
 int refname ;
 int startOffset ;

__attribute__((used)) static void
_outWindowDef(StringInfo str, const WindowDef *node)
{
 WRITE_NODE_TYPE("WINDOWDEF");

 WRITE_STRING_FIELD(name);
 WRITE_STRING_FIELD(refname);
 WRITE_NODE_FIELD(partitionClause);
 WRITE_NODE_FIELD(orderClause);
 WRITE_INT_FIELD(frameOptions);
 WRITE_NODE_FIELD(startOffset);
 WRITE_NODE_FIELD(endOffset);
 WRITE_LOCATION_FIELD(location);
}
