
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int as_snap; } ;
typedef int Snapshot ;


 TYPE_1__* ActiveSnapshot ;
 int Assert (int ) ;

Snapshot
GetActiveSnapshot(void)
{
 Assert(ActiveSnapshot != ((void*)0));

 return ActiveSnapshot->as_snap;
}
