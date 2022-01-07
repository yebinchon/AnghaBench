
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8 ;
struct TYPE_4__ {TYPE_2__* blocks; } ;
typedef TYPE_1__ XLogReaderState ;
struct TYPE_5__ {int blkno; int forknum; int rnode; int in_use; } ;
typedef int RelFileNode ;
typedef int ForkNumber ;
typedef TYPE_2__ DecodedBkpBlock ;
typedef int BlockNumber ;



bool
XLogRecGetBlockTag(XLogReaderState *record, uint8 block_id,
       RelFileNode *rnode, ForkNumber *forknum, BlockNumber *blknum)
{
 DecodedBkpBlock *bkpb;

 if (!record->blocks[block_id].in_use)
  return 0;

 bkpb = &record->blocks[block_id];
 if (rnode)
  *rnode = bkpb->rnode;
 if (forknum)
  *forknum = bkpb->forknum;
 if (blknum)
  *blknum = bkpb->blkno;
 return 1;
}
