
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t lruMoreRecently; size_t lruLessRecently; int fileName; } ;
typedef TYPE_1__ Vfd ;
typedef size_t File ;


 int Assert (int) ;
 int DO_DB (int ) ;
 int LOG ;
 TYPE_1__* VfdCache ;
 int _dump_lru () ;
 int elog (int ,char*,size_t,int ) ;

__attribute__((used)) static void
Insert(File file)
{
 Vfd *vfdP;

 Assert(file != 0);

 DO_DB(elog(LOG, "Insert %d (%s)",
      file, VfdCache[file].fileName));
 DO_DB(_dump_lru());

 vfdP = &VfdCache[file];

 vfdP->lruMoreRecently = 0;
 vfdP->lruLessRecently = VfdCache[0].lruLessRecently;
 VfdCache[0].lruLessRecently = file;
 VfdCache[vfdP->lruLessRecently].lruMoreRecently = file;

 DO_DB(_dump_lru());
}
