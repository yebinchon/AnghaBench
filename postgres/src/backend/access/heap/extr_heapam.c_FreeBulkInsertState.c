
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ current_buf; int strategy; } ;
typedef TYPE_1__* BulkInsertState ;


 int FreeAccessStrategy (int ) ;
 scalar_t__ InvalidBuffer ;
 int ReleaseBuffer (scalar_t__) ;
 int pfree (TYPE_1__*) ;

void
FreeBulkInsertState(BulkInsertState bistate)
{
 if (bistate->current_buf != InvalidBuffer)
  ReleaseBuffer(bistate->current_buf);
 FreeAccessStrategy(bistate->strategy);
 pfree(bistate);
}
