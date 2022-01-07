
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ compression; } ;
struct TYPE_7__ {char mode; int * zFH; int * nFH; scalar_t__ targetFile; } ;
typedef TYPE_1__ TAR_MEMBER ;
typedef TYPE_2__ ArchiveHandle ;


 scalar_t__ GZCLOSE (int *) ;
 int _tarAddFile (TYPE_2__*,TYPE_1__*) ;
 int fatal (char*) ;
 int free (scalar_t__) ;

__attribute__((used)) static void
tarClose(ArchiveHandle *AH, TAR_MEMBER *th)
{



 if (AH->compression != 0)
  if (GZCLOSE(th->zFH) != 0)
   fatal("could not close tar member");

 if (th->mode == 'w')
  _tarAddFile(AH, th);






 if (th->targetFile)
  free(th->targetFile);

 th->nFH = ((void*)0);
 th->zFH = ((void*)0);
}
