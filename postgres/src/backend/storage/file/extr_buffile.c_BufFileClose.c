
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int numFiles; struct TYPE_6__* files; } ;
typedef TYPE_1__ BufFile ;


 int BufFileFlush (TYPE_1__*) ;
 int FileClose (TYPE_1__) ;
 int pfree (TYPE_1__*) ;

void
BufFileClose(BufFile *file)
{
 int i;


 BufFileFlush(file);

 for (i = 0; i < file->numFiles; i++)
  FileClose(file->files[i]);

 pfree(file->files);
 pfree(file);
}
