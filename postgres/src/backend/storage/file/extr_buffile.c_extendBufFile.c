
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numFiles; scalar_t__* files; int isInterXact; int * fileset; int resowner; } ;
typedef int ResourceOwner ;
typedef scalar_t__ File ;
typedef TYPE_1__ BufFile ;


 int Assert (int) ;
 int CurrentResourceOwner ;
 scalar_t__ MakeNewSharedSegment (TYPE_1__*,int) ;
 scalar_t__ OpenTemporaryFile (int ) ;
 scalar_t__ repalloc (scalar_t__*,int) ;

__attribute__((used)) static void
extendBufFile(BufFile *file)
{
 File pfile;
 ResourceOwner oldowner;


 oldowner = CurrentResourceOwner;
 CurrentResourceOwner = file->resowner;

 if (file->fileset == ((void*)0))
  pfile = OpenTemporaryFile(file->isInterXact);
 else
  pfile = MakeNewSharedSegment(file, file->numFiles);

 Assert(pfile >= 0);

 CurrentResourceOwner = oldowner;

 file->files = (File *) repalloc(file->files,
         (file->numFiles + 1) * sizeof(File));
 file->files[file->numFiles] = pfile;
 file->numFiles++;
}
