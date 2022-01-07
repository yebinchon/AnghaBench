
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t cmin; } ;
typedef size_t CommandId ;


 int Assert (int) ;
 TYPE_1__* comboCids ;
 size_t usedComboCids ;

__attribute__((used)) static CommandId
GetRealCmin(CommandId combocid)
{
 Assert(combocid < usedComboCids);
 return comboCids[combocid].cmin;
}
