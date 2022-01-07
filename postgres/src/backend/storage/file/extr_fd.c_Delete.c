
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t lruLessRecently; size_t lruMoreRecently; int fileName; } ;
typedef TYPE_1__ Vfd ;
typedef size_t File ;


 int Assert (int) ;
 int DO_DB (int ) ;
 int LOG ;
 TYPE_1__* VfdCache ;
 int _dump_lru () ;
 int elog (int ,char*,size_t,int ) ;

__attribute__((used)) static void
Delete(File file)
{
 Vfd *vfdP;

 Assert(file != 0);

 DO_DB(elog(LOG, "Delete %d (%s)",
      file, VfdCache[file].fileName));
 DO_DB(_dump_lru());

 vfdP = &VfdCache[file];

 VfdCache[vfdP->lruLessRecently].lruMoreRecently = vfdP->lruMoreRecently;
 VfdCache[vfdP->lruMoreRecently].lruLessRecently = vfdP->lruLessRecently;

 DO_DB(_dump_lru());
}
