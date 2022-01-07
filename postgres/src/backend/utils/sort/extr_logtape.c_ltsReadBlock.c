
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pfile; } ;
typedef TYPE_1__ LogicalTapeSet ;


 scalar_t__ BLCKSZ ;
 scalar_t__ BufFileRead (int ,void*,scalar_t__) ;
 scalar_t__ BufFileSeekBlock (int ,long) ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,long) ;

__attribute__((used)) static void
ltsReadBlock(LogicalTapeSet *lts, long blocknum, void *buffer)
{
 if (BufFileSeekBlock(lts->pfile, blocknum) != 0 ||
  BufFileRead(lts->pfile, buffer, BLCKSZ) != BLCKSZ)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not read block %ld of temporary file: %m",
      blocknum)));
}
