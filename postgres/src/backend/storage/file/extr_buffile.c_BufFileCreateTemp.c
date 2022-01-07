
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int isInterXact; } ;
typedef scalar_t__ File ;
typedef TYPE_1__ BufFile ;


 int Assert (int) ;
 scalar_t__ OpenTemporaryFile (int) ;
 int PrepareTempTablespaces () ;
 TYPE_1__* makeBufFile (scalar_t__) ;

BufFile *
BufFileCreateTemp(bool interXact)
{
 BufFile *file;
 File pfile;
 PrepareTempTablespaces();

 pfile = OpenTemporaryFile(interXact);
 Assert(pfile >= 0);

 file = makeBufFile(pfile);
 file->isInterXact = interXact;

 return file;
}
