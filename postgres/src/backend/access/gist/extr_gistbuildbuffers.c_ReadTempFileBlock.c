
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BufFile ;


 scalar_t__ BLCKSZ ;
 scalar_t__ BufFileRead (int *,void*,scalar_t__) ;
 scalar_t__ BufFileSeekBlock (int *,long) ;
 int ERROR ;
 int elog (int ,char*) ;

__attribute__((used)) static void
ReadTempFileBlock(BufFile *file, long blknum, void *ptr)
{
 if (BufFileSeekBlock(file, blknum) != 0)
  elog(ERROR, "could not seek temporary file: %m");
 if (BufFileRead(file, ptr, BLCKSZ) != BLCKSZ)
  elog(ERROR, "could not read temporary file: %m");
}
