
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fd; int fileMode; int fileFlags; int fileName; } ;
typedef TYPE_1__ Vfd ;
typedef size_t File ;


 int Assert (int) ;
 scalar_t__ BasicOpenFilePerm (int ,int ,int ) ;
 int DO_DB (int ) ;
 scalar_t__ FileIsNotOpen (size_t) ;
 int Insert (size_t) ;
 int LOG ;
 int ReleaseLruFiles () ;
 TYPE_1__* VfdCache ;
 int elog (int ,char*,...) ;
 int nfile ;

__attribute__((used)) static int
LruInsert(File file)
{
 Vfd *vfdP;

 Assert(file != 0);

 DO_DB(elog(LOG, "LruInsert %d (%s)",
      file, VfdCache[file].fileName));

 vfdP = &VfdCache[file];

 if (FileIsNotOpen(file))
 {

  ReleaseLruFiles();






  vfdP->fd = BasicOpenFilePerm(vfdP->fileName, vfdP->fileFlags,
          vfdP->fileMode);
  if (vfdP->fd < 0)
  {
   DO_DB(elog(LOG, "re-open failed: %m"));
   return -1;
  }
  else
  {
   ++nfile;
  }
 }





 Insert(file);

 return 0;
}
