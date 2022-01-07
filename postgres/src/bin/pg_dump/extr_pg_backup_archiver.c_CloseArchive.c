
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ OF; scalar_t__ gzOut; int (* ClosePtr ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ArchiveHandle ;
typedef int Archive ;


 int GZCLOSE (scalar_t__) ;
 int fatal (char*) ;
 int fclose (scalar_t__) ;
 scalar_t__ stdout ;
 int stub1 (TYPE_1__*) ;

void
CloseArchive(Archive *AHX)
{
 int res = 0;
 ArchiveHandle *AH = (ArchiveHandle *) AHX;

 AH->ClosePtr(AH);


 if (AH->gzOut)
  res = GZCLOSE(AH->OF);
 else if (AH->OF != stdout)
  res = fclose(AH->OF);

 if (res != 0)
  fatal("could not close output file: %m");
}
