
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TocEntry ;
typedef int ArchiveHandle ;


 int WriteDataChunksForTocEntry (int *,int *) ;

__attribute__((used)) static int
_WorkerJobDumpDirectory(ArchiveHandle *AH, TocEntry *te)
{





 WriteDataChunksForTocEntry(AH, te);

 return 0;
}
