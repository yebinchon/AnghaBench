
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Snapshot ;


 int CurrentResourceOwner ;
 int UnregisterSnapshotFromOwner (int *,int ) ;

void
UnregisterSnapshot(Snapshot snapshot)
{
 if (snapshot == ((void*)0))
  return;

 UnregisterSnapshotFromOwner(snapshot, CurrentResourceOwner);
}
