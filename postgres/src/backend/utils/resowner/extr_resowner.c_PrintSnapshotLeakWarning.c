
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Snapshot ;


 int WARNING ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
PrintSnapshotLeakWarning(Snapshot snapshot)
{
 elog(WARNING, "Snapshot reference leak: Snapshot %p still referenced",
   snapshot);
}
