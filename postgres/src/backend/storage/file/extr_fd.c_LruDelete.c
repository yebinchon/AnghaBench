
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdstate; int fd; int fileName; } ;
typedef TYPE_1__ Vfd ;
typedef size_t File ;


 int Assert (int) ;
 int DO_DB (int ) ;
 int Delete (size_t) ;
 int FD_TEMP_FILE_LIMIT ;
 int LOG ;
 int VFD_CLOSED ;
 TYPE_1__* VfdCache ;
 scalar_t__ close (int ) ;
 int data_sync_elevel (int ) ;
 int elog (int ,char*,size_t,...) ;
 int nfile ;

__attribute__((used)) static void
LruDelete(File file)
{
 Vfd *vfdP;

 Assert(file != 0);

 DO_DB(elog(LOG, "LruDelete %d (%s)",
      file, VfdCache[file].fileName));

 vfdP = &VfdCache[file];





 if (close(vfdP->fd) != 0)
  elog(vfdP->fdstate & FD_TEMP_FILE_LIMIT ? LOG : data_sync_elevel(LOG),
    "could not close file \"%s\": %m", vfdP->fileName);
 vfdP->fd = VFD_CLOSED;
 --nfile;


 Delete(file);
}
