
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rank; } ;
typedef TYPE_1__ rank_context ;
typedef scalar_t__ int64 ;
typedef int WindowObject ;


 int Assert (int) ;
 scalar_t__ WinGetCurrentPosition (int ) ;
 scalar_t__ WinGetPartitionLocalMemory (int ,int) ;
 int WinRowsArePeers (int ,scalar_t__,scalar_t__) ;
 int WinSetMarkPosition (int ,scalar_t__) ;

__attribute__((used)) static bool
rank_up(WindowObject winobj)
{
 bool up = 0;
 int64 curpos = WinGetCurrentPosition(winobj);
 rank_context *context;

 context = (rank_context *)
  WinGetPartitionLocalMemory(winobj, sizeof(rank_context));

 if (context->rank == 0)
 {

  Assert(curpos == 0);
  context->rank = 1;
 }
 else
 {
  Assert(curpos > 0);

  if (!WinRowsArePeers(winobj, curpos - 1, curpos))
   up = 1;
 }


 WinSetMarkPosition(winobj, curpos);

 return up;
}
