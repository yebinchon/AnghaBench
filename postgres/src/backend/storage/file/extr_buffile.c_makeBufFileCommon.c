
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numFiles; int isInterXact; int dirty; long curOffset; scalar_t__ nbytes; scalar_t__ pos; scalar_t__ curFile; int resowner; } ;
typedef TYPE_1__ BufFile ;


 int CurrentResourceOwner ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static BufFile *
makeBufFileCommon(int nfiles)
{
 BufFile *file = (BufFile *) palloc(sizeof(BufFile));

 file->numFiles = nfiles;
 file->isInterXact = 0;
 file->dirty = 0;
 file->resowner = CurrentResourceOwner;
 file->curFile = 0;
 file->curOffset = 0L;
 file->pos = 0;
 file->nbytes = 0;

 return file;
}
