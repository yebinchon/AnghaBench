
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ data; } ;


 int Assert (int ) ;
 int ERROR ;
 int MAXPGPATH ;
 TYPE_2__* MyReplicationSlot ;
 char* NameStr (int ) ;
 int SaveSlotToPath (TYPE_2__*,char*,int ) ;
 int sprintf (char*,char*,char*) ;

void
ReplicationSlotSave(void)
{
 char path[MAXPGPATH];

 Assert(MyReplicationSlot != ((void*)0));

 sprintf(path, "pg_replslot/%s", NameStr(MyReplicationSlot->data.name));
 SaveSlotToPath(MyReplicationSlot, path, ERROR);
}
