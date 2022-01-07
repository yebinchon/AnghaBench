
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* readBuf; struct TYPE_6__* readRecordBuf; struct TYPE_6__* errormsg_buf; struct TYPE_6__* main_data; TYPE_1__* blocks; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_5__ {TYPE_2__* data; } ;


 int XLR_MAX_BLOCK_ID ;
 int pfree (TYPE_2__*) ;

void
XLogReaderFree(XLogReaderState *state)
{
 int block_id;

 for (block_id = 0; block_id <= XLR_MAX_BLOCK_ID; block_id++)
 {
  if (state->blocks[block_id].data)
   pfree(state->blocks[block_id].data);
 }
 if (state->main_data)
  pfree(state->main_data);

 pfree(state->errormsg_buf);
 if (state->readRecordBuf)
  pfree(state->readRecordBuf);
 pfree(state->readBuf);
 pfree(state);
}
