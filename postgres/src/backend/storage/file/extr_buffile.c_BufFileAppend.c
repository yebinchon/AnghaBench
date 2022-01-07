
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long numFiles; int readOnly; scalar_t__ resowner; int * files; int * fileset; int dirty; } ;
typedef int File ;
typedef TYPE_1__ BufFile ;


 int Assert (int) ;
 long BUFFILE_SEG_SIZE ;
 int ERROR ;
 int elog (int ,char*) ;
 scalar_t__ repalloc (int *,int) ;

long
BufFileAppend(BufFile *target, BufFile *source)
{
 long startBlock = target->numFiles * BUFFILE_SEG_SIZE;
 int newNumFiles = target->numFiles + source->numFiles;
 int i;

 Assert(target->fileset != ((void*)0));
 Assert(source->readOnly);
 Assert(!source->dirty);
 Assert(source->fileset != ((void*)0));

 if (target->resowner != source->resowner)
  elog(ERROR, "could not append BufFile with non-matching resource owner");

 target->files = (File *)
  repalloc(target->files, sizeof(File) * newNumFiles);
 for (i = target->numFiles; i < newNumFiles; i++)
  target->files[i] = source->files[i - target->numFiles];
 target->numFiles = newNumFiles;

 return startBlock;
}
