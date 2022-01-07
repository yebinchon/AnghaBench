
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef long int64 ;
struct TYPE_6__ {int firstblocknumber; } ;
typedef TYPE_1__ TapeShare ;
struct TYPE_8__ {long offsetBlockNumber; int max_size; int firstBlockNumber; } ;
struct TYPE_7__ {int nTapes; long nBlocksAllocated; long nBlocksWritten; long nHoleBlocks; int * pfile; TYPE_3__* tapes; } ;
typedef int SharedFileSet ;
typedef TYPE_2__ LogicalTapeSet ;
typedef TYPE_3__ LogicalTape ;
typedef int BufFile ;


 int Assert (int) ;
 long BLCKSZ ;
 long BufFileAppend (int *,int *) ;
 int * BufFileOpenShared (int *,char*) ;
 long BufFileSize (int *) ;
 int MAXPGPATH ;
 int MaxAllocSize ;
 int Min (int ,long) ;
 int pg_itoa (int,char*) ;

__attribute__((used)) static void
ltsConcatWorkerTapes(LogicalTapeSet *lts, TapeShare *shared,
      SharedFileSet *fileset)
{
 LogicalTape *lt = ((void*)0);
 long tapeblocks = 0L;
 long nphysicalblocks = 0L;
 int i;


 Assert(lts->nTapes >= 2);






 for (i = 0; i < lts->nTapes - 1; i++)
 {
  char filename[MAXPGPATH];
  BufFile *file;
  int64 filesize;

  lt = &lts->tapes[i];

  pg_itoa(i, filename);
  file = BufFileOpenShared(fileset, filename);
  filesize = BufFileSize(file);





  lt->firstBlockNumber = shared[i].firstblocknumber;
  if (i == 0)
  {
   lts->pfile = file;
   lt->offsetBlockNumber = 0L;
  }
  else
  {
   lt->offsetBlockNumber = BufFileAppend(lts->pfile, file);
  }

  lt->max_size = Min(MaxAllocSize, filesize);
  tapeblocks = filesize / BLCKSZ;
  nphysicalblocks += tapeblocks;
 }







 lts->nBlocksAllocated = lt->offsetBlockNumber + tapeblocks;
 lts->nBlocksWritten = lts->nBlocksAllocated;
 lts->nHoleBlocks = lts->nBlocksAllocated - nphysicalblocks;
}
