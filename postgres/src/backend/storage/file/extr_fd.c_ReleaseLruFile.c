
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lruMoreRecently; } ;


 int Assert (int) ;
 int DO_DB (int ) ;
 int LOG ;
 int LruDelete (scalar_t__) ;
 TYPE_1__* VfdCache ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ nfile ;

__attribute__((used)) static bool
ReleaseLruFile(void)
{
 DO_DB(elog(LOG, "ReleaseLruFile. Opened %d", nfile));

 if (nfile > 0)
 {




  Assert(VfdCache[0].lruMoreRecently != 0);
  LruDelete(VfdCache[0].lruMoreRecently);
  return 1;
 }
 return 0;
}
