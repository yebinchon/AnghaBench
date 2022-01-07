
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int inh; int alias; } ;
typedef TYPE_1__ RangeVar ;
typedef int RangeTblEntry ;
typedef int ParseState ;


 int * addRangeTableEntry (int *,TYPE_1__*,int ,int ,int) ;

__attribute__((used)) static RangeTblEntry *
transformTableEntry(ParseState *pstate, RangeVar *r)
{
 RangeTblEntry *rte;


 rte = addRangeTableEntry(pstate, r, r->alias, r->inh, 1);

 return rte;
}
