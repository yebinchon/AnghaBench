
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_3__ {char* fileName; int fileFlags; int fdstate; int * resowner; scalar_t__ fileSize; int fileMode; int fd; } ;
typedef TYPE_1__ Vfd ;
typedef size_t File ;


 size_t AllocateVfd () ;
 int BasicOpenFilePerm (char const*,int,int ) ;
 int DO_DB (int ) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int FreeVfd (size_t) ;
 int Insert (size_t) ;
 int LOG ;
 int O_CREAT ;
 int O_EXCL ;
 int O_TRUNC ;
 int ReleaseLruFiles () ;
 TYPE_1__* VfdCache ;
 int elog (int ,char*,char const*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int errno ;
 int free (char*) ;
 int nfile ;
 char* strdup (char const*) ;

File
PathNameOpenFilePerm(const char *fileName, int fileFlags, mode_t fileMode)
{
 char *fnamecopy;
 File file;
 Vfd *vfdP;

 DO_DB(elog(LOG, "PathNameOpenFilePerm: %s %x %o",
      fileName, fileFlags, fileMode));




 fnamecopy = strdup(fileName);
 if (fnamecopy == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory")));

 file = AllocateVfd();
 vfdP = &VfdCache[file];


 ReleaseLruFiles();

 vfdP->fd = BasicOpenFilePerm(fileName, fileFlags, fileMode);

 if (vfdP->fd < 0)
 {
  int save_errno = errno;

  FreeVfd(file);
  free(fnamecopy);
  errno = save_errno;
  return -1;
 }
 ++nfile;
 DO_DB(elog(LOG, "PathNameOpenFile: success %d",
      vfdP->fd));

 Insert(file);

 vfdP->fileName = fnamecopy;

 vfdP->fileFlags = fileFlags & ~(O_CREAT | O_TRUNC | O_EXCL);
 vfdP->fileMode = fileMode;
 vfdP->fileSize = 0;
 vfdP->fdstate = 0x0;
 vfdP->resowner = ((void*)0);

 return file;
}
