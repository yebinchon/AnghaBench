
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WindowDef ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int endOffset ;
 int frameOptions ;
 int location ;
 int name ;
 int orderClause ;
 int partitionClause ;
 int refname ;
 int startOffset ;

__attribute__((used)) static bool
_equalWindowDef(const WindowDef *a, const WindowDef *b)
{
 COMPARE_STRING_FIELD(name);
 COMPARE_STRING_FIELD(refname);
 COMPARE_NODE_FIELD(partitionClause);
 COMPARE_NODE_FIELD(orderClause);
 COMPARE_SCALAR_FIELD(frameOptions);
 COMPARE_NODE_FIELD(startOffset);
 COMPARE_NODE_FIELD(endOffset);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
