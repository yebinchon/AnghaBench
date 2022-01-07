
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint32 ;
typedef int instr_time ;
typedef int XLogRecPtr ;
struct TYPE_25__ {int shared_blks_written; int blk_write_time; } ;
struct TYPE_19__ {int blockNum; int forkNum; int rnode; } ;
struct TYPE_24__ {TYPE_1__ tag; } ;
struct TYPE_23__ {struct TYPE_23__* previous; void* arg; int callback; } ;
struct TYPE_20__ {int relNode; int dbNode; int spcNode; } ;
struct TYPE_21__ {TYPE_2__ node; } ;
struct TYPE_22__ {TYPE_3__ smgr_rnode; } ;
typedef TYPE_4__* SMgrRelation ;
typedef int Page ;
typedef TYPE_5__ ErrorContextCallback ;
typedef TYPE_6__ BufferDesc ;
typedef scalar_t__ Block ;


 int BM_JUST_DIRTIED ;
 int BM_PERMANENT ;
 scalar_t__ BufHdrGetBlock (TYPE_6__*) ;
 int BufferGetLSN (TYPE_6__*) ;
 int INSTR_TIME_ADD (int ,int ) ;
 int INSTR_TIME_GET_MICROSEC (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 int InvalidBackendId ;
 int LockBufHdr (TYPE_6__*) ;
 char* PageSetChecksumCopy (int ,int ) ;
 int StartBufferIO (TYPE_6__*,int) ;
 int TRACE_POSTGRESQL_BUFFER_FLUSH_DONE (int ,int ,int ,int ,int ) ;
 int TRACE_POSTGRESQL_BUFFER_FLUSH_START (int ,int ,int ,int ,int ) ;
 int TerminateBufferIO (TYPE_6__*,int,int ) ;
 int UnlockBufHdr (TYPE_6__*,int) ;
 int XLogFlush (int ) ;
 TYPE_5__* error_context_stack ;
 TYPE_9__ pgBufferUsage ;
 int pgstat_count_buffer_write_time (int ) ;
 int shared_buffer_write_error_callback ;
 TYPE_4__* smgropen (int ,int ) ;
 int smgrwrite (TYPE_4__*,int ,int ,char*,int) ;
 scalar_t__ track_io_timing ;

__attribute__((used)) static void
FlushBuffer(BufferDesc *buf, SMgrRelation reln)
{
 XLogRecPtr recptr;
 ErrorContextCallback errcallback;
 instr_time io_start,
    io_time;
 Block bufBlock;
 char *bufToWrite;
 uint32 buf_state;






 if (!StartBufferIO(buf, 0))
  return;


 errcallback.callback = shared_buffer_write_error_callback;
 errcallback.arg = (void *) buf;
 errcallback.previous = error_context_stack;
 error_context_stack = &errcallback;


 if (reln == ((void*)0))
  reln = smgropen(buf->tag.rnode, InvalidBackendId);

 TRACE_POSTGRESQL_BUFFER_FLUSH_START(buf->tag.forkNum,
          buf->tag.blockNum,
          reln->smgr_rnode.node.spcNode,
          reln->smgr_rnode.node.dbNode,
          reln->smgr_rnode.node.relNode);

 buf_state = LockBufHdr(buf);





 recptr = BufferGetLSN(buf);


 buf_state &= ~BM_JUST_DIRTIED;
 UnlockBufHdr(buf, buf_state);
 if (buf_state & BM_PERMANENT)
  XLogFlush(recptr);






 bufBlock = BufHdrGetBlock(buf);






 bufToWrite = PageSetChecksumCopy((Page) bufBlock, buf->tag.blockNum);

 if (track_io_timing)
  INSTR_TIME_SET_CURRENT(io_start);




 smgrwrite(reln,
     buf->tag.forkNum,
     buf->tag.blockNum,
     bufToWrite,
     0);

 if (track_io_timing)
 {
  INSTR_TIME_SET_CURRENT(io_time);
  INSTR_TIME_SUBTRACT(io_time, io_start);
  pgstat_count_buffer_write_time(INSTR_TIME_GET_MICROSEC(io_time));
  INSTR_TIME_ADD(pgBufferUsage.blk_write_time, io_time);
 }

 pgBufferUsage.shared_blks_written++;





 TerminateBufferIO(buf, 1, 0);

 TRACE_POSTGRESQL_BUFFER_FLUSH_DONE(buf->tag.forkNum,
            buf->tag.blockNum,
            reln->smgr_rnode.node.spcNode,
            reln->smgr_rnode.node.dbNode,
            reln->smgr_rnode.node.relNode);


 error_context_stack = errcallback.previous;
}
