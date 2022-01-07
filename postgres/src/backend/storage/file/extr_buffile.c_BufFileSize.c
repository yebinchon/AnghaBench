
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_3__ {int numFiles; int name; int * files; int * fileset; } ;
typedef TYPE_1__ BufFile ;


 int Assert (int ) ;
 int ERROR ;
 int FilePathName (int ) ;
 scalar_t__ FileSize (int ) ;
 scalar_t__ MAX_PHYSICAL_FILESIZE ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ,int ) ;

int64
BufFileSize(BufFile *file)
{
 int64 lastFileSize;

 Assert(file->fileset != ((void*)0));


 lastFileSize = FileSize(file->files[file->numFiles - 1]);
 if (lastFileSize < 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not determine size of temporary file \"%s\" from BufFile \"%s\": %m",
      FilePathName(file->files[file->numFiles - 1]),
      file->name)));

 return ((file->numFiles - 1) * (int64) MAX_PHYSICAL_FILESIZE) +
  lastFileSize;
}
