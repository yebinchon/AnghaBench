
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* curcid; } ;
struct TYPE_3__ {void* curcid; } ;
typedef void* CommandId ;


 TYPE_2__* CurrentSnapshot ;
 int FirstSnapshotSet ;
 TYPE_1__* SecondarySnapshot ;

void
SnapshotSetCommandId(CommandId curcid)
{
 if (!FirstSnapshotSet)
  return;

 if (CurrentSnapshot)
  CurrentSnapshot->curcid = curcid;
 if (SecondarySnapshot)
  SecondarySnapshot->curcid = curcid;

}
