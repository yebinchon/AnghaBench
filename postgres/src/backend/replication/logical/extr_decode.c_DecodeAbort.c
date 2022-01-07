
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nsubxacts; int * subxacts; } ;
typedef TYPE_2__ xl_xact_parsed_abort ;
struct TYPE_10__ {TYPE_1__* record; } ;
typedef TYPE_3__ XLogRecordBuffer ;
typedef int TransactionId ;
struct TYPE_11__ {int reorder; } ;
struct TYPE_8__ {int EndRecPtr; } ;
typedef TYPE_4__ LogicalDecodingContext ;


 int ReorderBufferAbort (int ,int ,int ) ;

__attribute__((used)) static void
DecodeAbort(LogicalDecodingContext *ctx, XLogRecordBuffer *buf,
   xl_xact_parsed_abort *parsed, TransactionId xid)
{
 int i;

 for (i = 0; i < parsed->nsubxacts; i++)
 {
  ReorderBufferAbort(ctx->reorder, parsed->subxacts[i],
         buf->record->EndRecPtr);
 }

 ReorderBufferAbort(ctx->reorder, xid, buf->record->EndRecPtr);
}
