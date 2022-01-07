
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Snapshot ;


 int CurrentResourceOwner ;
 scalar_t__ InvalidSnapshot ;
 scalar_t__ RegisterSnapshotOnOwner (scalar_t__,int ) ;

Snapshot
RegisterSnapshot(Snapshot snapshot)
{
 if (snapshot == InvalidSnapshot)
  return InvalidSnapshot;

 return RegisterSnapshotOnOwner(snapshot, CurrentResourceOwner);
}
