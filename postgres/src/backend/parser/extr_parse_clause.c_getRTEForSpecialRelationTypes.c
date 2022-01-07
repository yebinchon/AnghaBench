
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int relname; scalar_t__ schemaname; } ;
typedef TYPE_1__ RangeVar ;
typedef int RangeTblEntry ;
typedef int ParseState ;
typedef int Index ;
typedef int CommonTableExpr ;


 int * addRangeTableEntryForCTE (int *,int *,int ,TYPE_1__*,int) ;
 int * addRangeTableEntryForENR (int *,TYPE_1__*,int) ;
 int * scanNameSpaceForCTE (int *,int ,int *) ;
 scalar_t__ scanNameSpaceForENR (int *,int ) ;

__attribute__((used)) static RangeTblEntry *
getRTEForSpecialRelationTypes(ParseState *pstate, RangeVar *rv)
{
 CommonTableExpr *cte;
 Index levelsup;
 RangeTblEntry *rte;




 if (rv->schemaname)
  return ((void*)0);

 cte = scanNameSpaceForCTE(pstate, rv->relname, &levelsup);
 if (cte)
  rte = addRangeTableEntryForCTE(pstate, cte, levelsup, rv, 1);
 else if (scanNameSpaceForENR(pstate, rv->relname))
  rte = addRangeTableEntryForENR(pstate, rv, 1);
 else
  rte = ((void*)0);

 return rte;
}
