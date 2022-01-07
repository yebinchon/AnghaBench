
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {scalar_t__ forkno; scalar_t__ block; int flags; int in_use; int rnode; scalar_t__ rdata_len; int rdata_head; int * rdata_tail; int page; } ;
typedef TYPE_1__ registered_buffer ;
typedef int XLogRecData ;
typedef int RelFileNode ;
typedef int Page ;
typedef scalar_t__ ForkNumber ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int ERROR ;
 int REGBUF_FORCE_IMAGE ;
 int RelFileNodeEquals (int ,int ) ;
 int begininsert_called ;
 int elog (int ,char*) ;
 int max_registered_block_id ;
 int max_registered_buffers ;
 TYPE_1__* registered_buffers ;

void
XLogRegisterBlock(uint8 block_id, RelFileNode *rnode, ForkNumber forknum,
      BlockNumber blknum, Page page, uint8 flags)
{
 registered_buffer *regbuf;


 Assert(flags & REGBUF_FORCE_IMAGE);
 Assert(begininsert_called);

 if (block_id >= max_registered_block_id)
  max_registered_block_id = block_id + 1;

 if (block_id >= max_registered_buffers)
  elog(ERROR, "too many registered buffers");

 regbuf = &registered_buffers[block_id];

 regbuf->rnode = *rnode;
 regbuf->forkno = forknum;
 regbuf->block = blknum;
 regbuf->page = page;
 regbuf->flags = flags;
 regbuf->rdata_tail = (XLogRecData *) &regbuf->rdata_head;
 regbuf->rdata_len = 0;
 regbuf->in_use = 1;
}
