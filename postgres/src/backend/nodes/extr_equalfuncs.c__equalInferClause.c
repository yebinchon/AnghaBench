
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int InferClause ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int conname ;
 int indexElems ;
 int location ;
 int whereClause ;

__attribute__((used)) static bool
_equalInferClause(const InferClause *a, const InferClause *b)
{
 COMPARE_NODE_FIELD(indexElems);
 COMPARE_NODE_FIELD(whereClause);
 COMPARE_STRING_FIELD(conname);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
