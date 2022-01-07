
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Snapshot ;


 int CopySnapshot (int ) ;
 int PushActiveSnapshot (int ) ;

void
PushCopiedSnapshot(Snapshot snapshot)
{
 PushActiveSnapshot(CopySnapshot(snapshot));
}
