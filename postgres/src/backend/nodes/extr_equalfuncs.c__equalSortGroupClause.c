
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortGroupClause ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int eqop ;
 int hashable ;
 int nulls_first ;
 int sortop ;
 int tleSortGroupRef ;

__attribute__((used)) static bool
_equalSortGroupClause(const SortGroupClause *a, const SortGroupClause *b)
{
 COMPARE_SCALAR_FIELD(tleSortGroupRef);
 COMPARE_SCALAR_FIELD(eqop);
 COMPARE_SCALAR_FIELD(sortop);
 COMPARE_SCALAR_FIELD(nulls_first);
 COMPARE_SCALAR_FIELD(hashable);

 return 1;
}
