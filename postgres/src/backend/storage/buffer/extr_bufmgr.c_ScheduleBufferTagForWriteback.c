
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* max_pending; scalar_t__ nr_pending; TYPE_2__* pending_writebacks; } ;
typedef TYPE_1__ WritebackContext ;
struct TYPE_6__ {int tag; } ;
typedef TYPE_2__ PendingWriteback ;
typedef int BufferTag ;


 int Assert (int) ;
 int IssuePendingWritebacks (TYPE_1__*) ;
 scalar_t__ WRITEBACK_MAX_PENDING_FLUSHES ;

void
ScheduleBufferTagForWriteback(WritebackContext *context, BufferTag *tag)
{
 PendingWriteback *pending;





 if (*context->max_pending > 0)
 {
  Assert(*context->max_pending <= WRITEBACK_MAX_PENDING_FLUSHES);

  pending = &context->pending_writebacks[context->nr_pending++];

  pending->tag = *tag;
 }






 if (context->nr_pending >= *context->max_pending)
  IssuePendingWritebacks(context);
}
