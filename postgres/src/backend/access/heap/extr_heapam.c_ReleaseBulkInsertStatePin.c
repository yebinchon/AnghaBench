
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ current_buf; } ;
typedef TYPE_1__* BulkInsertState ;


 scalar_t__ InvalidBuffer ;
 int ReleaseBuffer (scalar_t__) ;

void
ReleaseBulkInsertStatePin(BulkInsertState bistate)
{
 if (bistate->current_buf != InvalidBuffer)
  ReleaseBuffer(bistate->current_buf);
 bistate->current_buf = InvalidBuffer;
}
