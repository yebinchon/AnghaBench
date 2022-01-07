
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_3__ {int fdstate; scalar_t__ resowner; int fileName; scalar_t__ fileSize; int fd; } ;
typedef TYPE_1__ Vfd ;
typedef size_t File ;


 int Assert (int ) ;
 int DO_DB (int ) ;
 int Delete (size_t) ;
 int FD_DELETE_AT_CLOSE ;
 int FD_TEMP_FILE_LIMIT ;
 int FileIsNotOpen (size_t) ;
 int FileIsValid (size_t) ;
 int FreeVfd (size_t) ;
 int LOG ;
 int ReportTemporaryFileUsage (int ,int ) ;
 int ResourceOwnerForgetFile (scalar_t__,size_t) ;
 int VFD_CLOSED ;
 TYPE_1__* VfdCache ;
 scalar_t__ close (int ) ;
 int data_sync_elevel (int ) ;
 int elog (int ,char*,size_t,...) ;
 int errno ;
 int nfile ;
 scalar_t__ stat (int ,struct stat*) ;
 int temporary_files_size ;
 scalar_t__ unlink (int ) ;

void
FileClose(File file)
{
 Vfd *vfdP;

 Assert(FileIsValid(file));

 DO_DB(elog(LOG, "FileClose: %d (%s)",
      file, VfdCache[file].fileName));

 vfdP = &VfdCache[file];

 if (!FileIsNotOpen(file))
 {

  if (close(vfdP->fd) != 0)
  {




   elog(vfdP->fdstate & FD_TEMP_FILE_LIMIT ? LOG : data_sync_elevel(LOG),
     "could not close file \"%s\": %m", vfdP->fileName);
  }

  --nfile;
  vfdP->fd = VFD_CLOSED;


  Delete(file);
 }

 if (vfdP->fdstate & FD_TEMP_FILE_LIMIT)
 {

  temporary_files_size -= vfdP->fileSize;
  vfdP->fileSize = 0;
 }




 if (vfdP->fdstate & FD_DELETE_AT_CLOSE)
 {
  struct stat filestats;
  int stat_errno;
  vfdP->fdstate &= ~FD_DELETE_AT_CLOSE;



  if (stat(vfdP->fileName, &filestats))
   stat_errno = errno;
  else
   stat_errno = 0;


  if (unlink(vfdP->fileName))
   elog(LOG, "could not unlink file \"%s\": %m", vfdP->fileName);


  if (stat_errno == 0)
   ReportTemporaryFileUsage(vfdP->fileName, filestats.st_size);
  else
  {
   errno = stat_errno;
   elog(LOG, "could not stat file \"%s\": %m", vfdP->fileName);
  }
 }


 if (vfdP->resowner)
  ResourceOwnerForgetFile(vfdP->resowner, file);




 FreeVfd(file);
}
