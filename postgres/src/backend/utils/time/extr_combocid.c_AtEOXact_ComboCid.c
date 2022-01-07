
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * comboCids ;
 int * comboHash ;
 scalar_t__ sizeComboCids ;
 scalar_t__ usedComboCids ;

void
AtEOXact_ComboCid(void)
{




 comboHash = ((void*)0);

 comboCids = ((void*)0);
 usedComboCids = 0;
 sizeComboCids = 0;
}
