
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int current_buf; int strategy; } ;
typedef int BulkInsertStateData ;
typedef TYPE_1__* BulkInsertState ;


 int BAS_BULKWRITE ;
 int GetAccessStrategy (int ) ;
 int InvalidBuffer ;
 scalar_t__ palloc (int) ;

BulkInsertState
GetBulkInsertState(void)
{
 BulkInsertState bistate;

 bistate = (BulkInsertState) palloc(sizeof(BulkInsertStateData));
 bistate->strategy = GetAccessStrategy(BAS_BULKWRITE);
 bistate->current_buf = InvalidBuffer;
 return bistate;
}
