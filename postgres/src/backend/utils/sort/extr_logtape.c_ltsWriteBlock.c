
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zerobuf ;
struct TYPE_5__ {long nBlocksWritten; int pfile; } ;
struct TYPE_4__ {void* data; } ;
typedef TYPE_1__ PGAlignedBlock ;
typedef TYPE_2__ LogicalTapeSet ;


 scalar_t__ BLCKSZ ;
 scalar_t__ BufFileSeekBlock (int ,long) ;
 scalar_t__ BufFileWrite (int ,void*,scalar_t__) ;
 int ERROR ;
 int MemSet (void*,int ,int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,long) ;

__attribute__((used)) static void
ltsWriteBlock(LogicalTapeSet *lts, long blocknum, void *buffer)
{
 while (blocknum > lts->nBlocksWritten)
 {
  PGAlignedBlock zerobuf;

  MemSet(zerobuf.data, 0, sizeof(zerobuf));

  ltsWriteBlock(lts, lts->nBlocksWritten, zerobuf.data);
 }


 if (BufFileSeekBlock(lts->pfile, blocknum) != 0 ||
  BufFileWrite(lts->pfile, buffer, BLCKSZ) != BLCKSZ)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not write block %ld of temporary file: %m",
      blocknum)));


 if (blocknum == lts->nBlocksWritten)
  lts->nBlocksWritten++;
}
