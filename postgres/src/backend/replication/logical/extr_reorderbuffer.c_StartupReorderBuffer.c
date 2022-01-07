
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int DIR ;


 int * AllocateDir (char*) ;
 int DEBUG2 ;
 int FreeDir (int *) ;
 struct dirent* ReadDir (int *,char*) ;
 int ReorderBufferCleanupSerializedTXNs (int ) ;
 int ReplicationSlotValidateName (int ,int ) ;
 scalar_t__ strcmp (int ,char*) ;

void
StartupReorderBuffer(void)
{
 DIR *logical_dir;
 struct dirent *logical_de;

 logical_dir = AllocateDir("pg_replslot");
 while ((logical_de = ReadDir(logical_dir, "pg_replslot")) != ((void*)0))
 {
  if (strcmp(logical_de->d_name, ".") == 0 ||
   strcmp(logical_de->d_name, "..") == 0)
   continue;


  if (!ReplicationSlotValidateName(logical_de->d_name, DEBUG2))
   continue;





  ReorderBufferCleanupSerializedTXNs(logical_de->d_name);
 }
 FreeDir(logical_dir);
}
