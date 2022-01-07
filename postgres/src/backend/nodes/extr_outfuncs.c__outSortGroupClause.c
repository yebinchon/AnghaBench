
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int SortGroupClause ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_UINT_FIELD (int ) ;
 int eqop ;
 int hashable ;
 int nulls_first ;
 int sortop ;
 int tleSortGroupRef ;

__attribute__((used)) static void
_outSortGroupClause(StringInfo str, const SortGroupClause *node)
{
 WRITE_NODE_TYPE("SORTGROUPCLAUSE");

 WRITE_UINT_FIELD(tleSortGroupRef);
 WRITE_OID_FIELD(eqop);
 WRITE_OID_FIELD(sortop);
 WRITE_BOOL_FIELD(nulls_first);
 WRITE_BOOL_FIELD(hashable);
}
