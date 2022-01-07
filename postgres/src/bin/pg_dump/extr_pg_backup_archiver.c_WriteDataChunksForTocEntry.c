
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int dataDumperArg; int (* dataDumper ) (int *,int ) ;int desc; } ;
typedef TYPE_1__ TocEntry ;
struct TYPE_14__ {TYPE_1__* currToc; int (* EndDataPtr ) (TYPE_2__*,TYPE_1__*) ;int (* StartDataPtr ) (TYPE_2__*,TYPE_1__*) ;int (* EndBlobsPtr ) (TYPE_2__*,TYPE_1__*) ;int (* StartBlobsPtr ) (TYPE_2__*,TYPE_1__*) ;} ;
typedef int (* StartDataPtrType ) (TYPE_2__*,TYPE_1__*) ;
typedef int (* EndDataPtrType ) (TYPE_2__*,TYPE_1__*) ;
typedef TYPE_2__ ArchiveHandle ;
typedef int Archive ;


 scalar_t__ strcmp (int ,char*) ;
 int stub1 (TYPE_2__*,TYPE_1__*) ;
 int stub2 (int *,int ) ;
 int stub3 (TYPE_2__*,TYPE_1__*) ;

void
WriteDataChunksForTocEntry(ArchiveHandle *AH, TocEntry *te)
{
 StartDataPtrType startPtr;
 EndDataPtrType endPtr;

 AH->currToc = te;

 if (strcmp(te->desc, "BLOBS") == 0)
 {
  startPtr = AH->StartBlobsPtr;
  endPtr = AH->EndBlobsPtr;
 }
 else
 {
  startPtr = AH->StartDataPtr;
  endPtr = AH->EndDataPtr;
 }

 if (startPtr != ((void*)0))
  (*startPtr) (AH, te);




 te->dataDumper((Archive *) AH, te->dataDumperArg);

 if (endPtr != ((void*)0))
  (*endPtr) (AH, te);

 AH->currToc = ((void*)0);
}
