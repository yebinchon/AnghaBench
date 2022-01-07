
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BufFile ;


 scalar_t__ BLCKSZ ;
 scalar_t__ BufFileSeekBlock (int *,long) ;
 scalar_t__ BufFileWrite (int *,void*,scalar_t__) ;
 int ERROR ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,long) ;

__attribute__((used)) static void
WriteTempFileBlock(BufFile *file, long blknum, void *ptr)
{
 if (BufFileSeekBlock(file, blknum) != 0)
  elog(ERROR, "could not seek temporary file: %m");
 if (BufFileWrite(file, ptr, BLCKSZ) != BLCKSZ)
 {




  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not write block %ld of temporary file: %m",
      blknum)));
 }
}
