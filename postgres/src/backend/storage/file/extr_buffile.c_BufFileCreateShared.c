
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int readOnly; int * files; int name; int * fileset; } ;
typedef int SharedFileSet ;
typedef int File ;
typedef TYPE_1__ BufFile ;


 int MakeNewSharedSegment (TYPE_1__*,int ) ;
 TYPE_1__* makeBufFileCommon (int) ;
 scalar_t__ palloc (int) ;
 int pstrdup (char const*) ;

BufFile *
BufFileCreateShared(SharedFileSet *fileset, const char *name)
{
 BufFile *file;

 file = makeBufFileCommon(1);
 file->fileset = fileset;
 file->name = pstrdup(name);
 file->files = (File *) palloc(sizeof(File));
 file->files[0] = MakeNewSharedSegment(file, 0);
 file->readOnly = 0;

 return file;
}
