
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {char* readRecordBuf; int readRecordBufSize; } ;
typedef TYPE_1__ XLogReaderState ;


 int AllocSizeIsValid (int) ;
 int BLCKSZ ;
 int MCXT_ALLOC_NO_OOM ;
 int Max (int,int) ;
 int XLOG_BLCKSZ ;
 scalar_t__ palloc_extended (int,int ) ;
 int pfree (char*) ;

__attribute__((used)) static bool
allocate_recordbuf(XLogReaderState *state, uint32 reclength)
{
 uint32 newSize = reclength;

 newSize += XLOG_BLCKSZ - (newSize % XLOG_BLCKSZ);
 newSize = Max(newSize, 5 * Max(BLCKSZ, XLOG_BLCKSZ));
 if (!AllocSizeIsValid(newSize))
  return 0;



 if (state->readRecordBuf)
  pfree(state->readRecordBuf);
 state->readRecordBuf =
  (char *) palloc_extended(newSize, MCXT_ALLOC_NO_OOM);
 if (state->readRecordBuf == ((void*)0))
 {
  state->readRecordBufSize = 0;
  return 0;
 }
 state->readRecordBufSize = newSize;
 return 1;
}
