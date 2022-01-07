
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int readOnly; int * fileset; } ;
typedef TYPE_1__ BufFile ;


 int Assert (int) ;
 int BufFileFlush (TYPE_1__*) ;

void
BufFileExportShared(BufFile *file)
{

 Assert(file->fileset != ((void*)0));


 Assert(!file->readOnly);

 BufFileFlush(file);
 file->readOnly = 1;
}
