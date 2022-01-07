
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* max_pending; scalar_t__ nr_pending; } ;
typedef TYPE_1__ WritebackContext ;


 int Assert (int) ;
 int WRITEBACK_MAX_PENDING_FLUSHES ;

void
WritebackContextInit(WritebackContext *context, int *max_pending)
{
 Assert(*max_pending <= WRITEBACK_MAX_PENDING_FLUSHES);

 context->max_pending = max_pending;
 context->nr_pending = 0;
}
