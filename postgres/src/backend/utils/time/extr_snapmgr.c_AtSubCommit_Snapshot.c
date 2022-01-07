
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int as_level; struct TYPE_3__* as_next; } ;
typedef TYPE_1__ ActiveSnapshotElt ;


 TYPE_1__* ActiveSnapshot ;

void
AtSubCommit_Snapshot(int level)
{
 ActiveSnapshotElt *active;





 for (active = ActiveSnapshot; active != ((void*)0); active = active->as_next)
 {
  if (active->as_level < level)
   break;
  active->as_level = level - 1;
 }
}
