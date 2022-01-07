
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* fileName; int fdstate; size_t nextFree; } ;
typedef TYPE_1__ Vfd ;
typedef size_t File ;


 int DO_DB (int ) ;
 int LOG ;
 TYPE_1__* VfdCache ;
 int elog (int ,char*,size_t,char*) ;
 int free (char*) ;

__attribute__((used)) static void
FreeVfd(File file)
{
 Vfd *vfdP = &VfdCache[file];

 DO_DB(elog(LOG, "FreeVfd: %d (%s)",
      file, vfdP->fileName ? vfdP->fileName : ""));

 if (vfdP->fileName != ((void*)0))
 {
  free(vfdP->fileName);
  vfdP->fileName = ((void*)0);
 }
 vfdP->fdstate = 0x0;

 vfdP->nextFree = VfdCache[0].nextFree;
 VfdCache[0].nextFree = file;
}
