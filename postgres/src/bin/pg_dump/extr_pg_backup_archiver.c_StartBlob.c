
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int currToc; int (* StartBlobPtr ) (TYPE_1__*,int ,int ) ;} ;
typedef int Oid ;
typedef TYPE_1__ ArchiveHandle ;
typedef int Archive ;


 int fatal (char*) ;
 int stub1 (TYPE_1__*,int ,int ) ;

int
StartBlob(Archive *AHX, Oid oid)
{
 ArchiveHandle *AH = (ArchiveHandle *) AHX;

 if (!AH->StartBlobPtr)
  fatal("large-object output not supported in chosen format");

 AH->StartBlobPtr(AH, AH->currToc, oid);

 return 1;
}
