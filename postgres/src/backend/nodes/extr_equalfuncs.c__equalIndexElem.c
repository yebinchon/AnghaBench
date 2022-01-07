
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IndexElem ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int collation ;
 int expr ;
 int indexcolname ;
 int name ;
 int nulls_ordering ;
 int opclass ;
 int ordering ;

__attribute__((used)) static bool
_equalIndexElem(const IndexElem *a, const IndexElem *b)
{
 COMPARE_STRING_FIELD(name);
 COMPARE_NODE_FIELD(expr);
 COMPARE_STRING_FIELD(indexcolname);
 COMPARE_NODE_FIELD(collation);
 COMPARE_NODE_FIELD(opclass);
 COMPARE_SCALAR_FIELD(ordering);
 COMPARE_SCALAR_FIELD(nulls_ordering);

 return 1;
}
