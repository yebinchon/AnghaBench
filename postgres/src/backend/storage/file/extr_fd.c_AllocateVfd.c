
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nextFree; int fd; } ;
typedef TYPE_1__ Vfd ;
typedef int Size ;
typedef int Index ;
typedef size_t File ;


 int Assert (int) ;
 int DO_DB (int ) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int LOG ;
 int MemSet (char*,int ,int) ;
 int SizeVfdCache ;
 int VFD_CLOSED ;
 TYPE_1__* VfdCache ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ realloc (TYPE_1__*,int) ;

__attribute__((used)) static File
AllocateVfd(void)
{
 Index i;
 File file;

 DO_DB(elog(LOG, "AllocateVfd. Size %zu", SizeVfdCache));

 Assert(SizeVfdCache > 0);

 if (VfdCache[0].nextFree == 0)
 {





  Size newCacheSize = SizeVfdCache * 2;
  Vfd *newVfdCache;

  if (newCacheSize < 32)
   newCacheSize = 32;




  newVfdCache = (Vfd *) realloc(VfdCache, sizeof(Vfd) * newCacheSize);
  if (newVfdCache == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory")));
  VfdCache = newVfdCache;




  for (i = SizeVfdCache; i < newCacheSize; i++)
  {
   MemSet((char *) &(VfdCache[i]), 0, sizeof(Vfd));
   VfdCache[i].nextFree = i + 1;
   VfdCache[i].fd = VFD_CLOSED;
  }
  VfdCache[newCacheSize - 1].nextFree = 0;
  VfdCache[0].nextFree = SizeVfdCache;




  SizeVfdCache = newCacheSize;
 }

 file = VfdCache[0].nextFree;

 VfdCache[0].nextFree = VfdCache[file].nextFree;

 return file;
}
