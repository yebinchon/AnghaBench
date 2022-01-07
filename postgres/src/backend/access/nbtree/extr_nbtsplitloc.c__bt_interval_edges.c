
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ newitemoff; TYPE_1__* splits; int nsplits; int interval; } ;
struct TYPE_6__ {scalar_t__ firstoldonright; scalar_t__ newitemonleft; } ;
typedef TYPE_1__ SplitPoint ;
typedef TYPE_2__ FindSplitData ;


 int Assert (int) ;
 int Min (int ,int ) ;

__attribute__((used)) static void
_bt_interval_edges(FindSplitData *state, SplitPoint **leftinterval,
       SplitPoint **rightinterval)
{
 int highsplit = Min(state->interval, state->nsplits);
 SplitPoint *deltaoptimal;

 deltaoptimal = state->splits;
 *leftinterval = ((void*)0);
 *rightinterval = ((void*)0);






 for (int i = highsplit - 1; i >= 0; i--)
 {
  SplitPoint *distant = state->splits + i;

  if (distant->firstoldonright < deltaoptimal->firstoldonright)
  {
   if (*leftinterval == ((void*)0))
    *leftinterval = distant;
  }
  else if (distant->firstoldonright > deltaoptimal->firstoldonright)
  {
   if (*rightinterval == ((void*)0))
    *rightinterval = distant;
  }
  else if (!distant->newitemonleft && deltaoptimal->newitemonleft)
  {





   Assert(distant->firstoldonright == state->newitemoff);
   if (*leftinterval == ((void*)0))
    *leftinterval = distant;
  }
  else if (distant->newitemonleft && !deltaoptimal->newitemonleft)
  {





   Assert(distant->firstoldonright == state->newitemoff);
   if (*rightinterval == ((void*)0))
    *rightinterval = distant;
  }
  else
  {

   Assert(distant == deltaoptimal);
   if (*leftinterval == ((void*)0))
    *leftinterval = distant;
   if (*rightinterval == ((void*)0))
    *rightinterval = distant;
  }

  if (*leftinterval && *rightinterval)
   return;
 }

 Assert(0);
}
