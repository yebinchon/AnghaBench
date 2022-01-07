
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WindowClause ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
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

__attribute__((used)) static bool
_equalWindowClause(const WindowClause *a, const WindowClause *b)
{
 COMPARE_STRING_FIELD(name);
 COMPARE_STRING_FIELD(refname);
 COMPARE_NODE_FIELD(partitionClause);
 COMPARE_NODE_FIELD(orderClause);
 COMPARE_SCALAR_FIELD(frameOptions);
 COMPARE_NODE_FIELD(startOffset);
 COMPARE_NODE_FIELD(endOffset);
 COMPARE_SCALAR_FIELD(startInRangeFunc);
 COMPARE_SCALAR_FIELD(endInRangeFunc);
 COMPARE_SCALAR_FIELD(inRangeColl);
 COMPARE_SCALAR_FIELD(inRangeAsc);
 COMPARE_SCALAR_FIELD(inRangeNullsFirst);
 COMPARE_SCALAR_FIELD(winref);
 COMPARE_SCALAR_FIELD(copiedOrder);

 return 1;
}
