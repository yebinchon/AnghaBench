
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WindowClause ;
typedef int StringInfo ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_STRING_FIELD (int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int copiedOrder ;
 int endInRangeFunc ;
 int endOffset ;
 int frameOptions ;
 int inRangeAsc ;
 int inRangeColl ;
 int inRangeNullsFirst ;
 int name ;
 int orderClause ;
 int partitionClause ;
 int refname ;
 int startInRangeFunc ;
 int startOffset ;
 int winref ;

__attribute__((used)) static void
_outWindowClause(StringInfo str, const WindowClause *node)
{
 WRITE_NODE_TYPE("WINDOWCLAUSE");

 WRITE_STRING_FIELD(name);
 WRITE_STRING_FIELD(refname);
 WRITE_NODE_FIELD(partitionClause);
 WRITE_NODE_FIELD(orderClause);
 WRITE_INT_FIELD(frameOptions);
 WRITE_NODE_FIELD(startOffset);
 WRITE_NODE_FIELD(endOffset);
 WRITE_OID_FIELD(startInRangeFunc);
 WRITE_OID_FIELD(endInRangeFunc);
 WRITE_OID_FIELD(inRangeColl);
 WRITE_BOOL_FIELD(inRangeAsc);
 WRITE_BOOL_FIELD(inRangeNullsFirst);
 WRITE_UINT_FIELD(winref);
 WRITE_BOOL_FIELD(copiedOrder);
}
