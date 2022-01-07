
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* files; int readOnly; int name; int * fileset; } ;
typedef int Size ;
typedef int SharedFileSet ;
typedef scalar_t__ File ;
typedef TYPE_1__ BufFile ;


 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 int MAXPGPATH ;
 scalar_t__ SharedFileSetOpen (int *,char*) ;
 int SharedSegmentName (char*,char const*,int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*,char const*) ;
 TYPE_1__* makeBufFileCommon (int) ;
 scalar_t__* palloc (int) ;
 int pstrdup (char const*) ;
 scalar_t__* repalloc (scalar_t__*,int) ;

BufFile *
BufFileOpenShared(SharedFileSet *fileset, const char *name)
{
 BufFile *file;
 char segment_name[MAXPGPATH];
 Size capacity = 16;
 File *files;
 int nfiles = 0;

 files = palloc(sizeof(File) * capacity);





 for (;;)
 {

  if (nfiles + 1 > capacity)
  {
   capacity *= 2;
   files = repalloc(files, sizeof(File) * capacity);
  }

  SharedSegmentName(segment_name, name, nfiles);
  files[nfiles] = SharedFileSetOpen(fileset, segment_name);
  if (files[nfiles] <= 0)
   break;
  ++nfiles;

  CHECK_FOR_INTERRUPTS();
 }





 if (nfiles == 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not open temporary file \"%s\" from BufFile \"%s\": %m",
      segment_name, name)));

 file = makeBufFileCommon(nfiles);
 file->files = files;
 file->readOnly = 1;
 file->fileset = fileset;
 file->name = pstrdup(name);

 return file;
}
