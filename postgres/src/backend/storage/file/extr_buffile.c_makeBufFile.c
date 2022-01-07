
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int readOnly; int * name; int * fileset; int * files; } ;
typedef int File ;
typedef TYPE_1__ BufFile ;


 TYPE_1__* makeBufFileCommon (int) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static BufFile *
makeBufFile(File firstfile)
{
 BufFile *file = makeBufFileCommon(1);

 file->files = (File *) palloc(sizeof(File));
 file->files[0] = firstfile;
 file->readOnly = 0;
 file->fileset = ((void*)0);
 file->name = ((void*)0);

 return file;
}
