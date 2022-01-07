
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_15__ {int processed; } ;
struct TYPE_14__ {int operation; TYPE_3__* dest; TYPE_2__* plannedstmt; TYPE_1__* estate; } ;
struct TYPE_13__ {scalar_t__ mydest; } ;
struct TYPE_12__ {scalar_t__ hasReturning; } ;
struct TYPE_11__ {int es_processed; } ;
typedef TYPE_4__ QueryDesc ;






 scalar_t__ DestSPI ;
 int ERROR ;
 int EXEC_FLAG_SKIP_TRIGGERS ;
 int ExecutorEnd (TYPE_4__*) ;
 int ExecutorFinish (TYPE_4__*) ;
 int ExecutorRun (TYPE_4__*,int ,int ,int) ;
 int ExecutorStart (TYPE_4__*,int) ;
 int ForwardScanDirection ;
 int ResetUsage () ;
 int SPI_ERROR_OPUNKNOWN ;
 int SPI_OK_DELETE ;
 int SPI_OK_DELETE_RETURNING ;
 int SPI_OK_INSERT ;
 int SPI_OK_INSERT_RETURNING ;
 int SPI_OK_SELECT ;
 int SPI_OK_UPDATE ;
 int SPI_OK_UPDATE_RETURNING ;
 int SPI_OK_UTILITY ;
 scalar_t__ ShowExecutorStats ;
 int ShowUsage (char*) ;
 scalar_t__ _SPI_checktuples () ;
 TYPE_6__* _SPI_current ;
 int elog (int ,char*) ;

__attribute__((used)) static int
_SPI_pquery(QueryDesc *queryDesc, bool fire_triggers, uint64 tcount)
{
 int operation = queryDesc->operation;
 int eflags;
 int res;

 switch (operation)
 {
  case 129:
   if (queryDesc->dest->mydest != DestSPI)
   {

    res = SPI_OK_UTILITY;
   }
   else
    res = SPI_OK_SELECT;
   break;
  case 130:
   if (queryDesc->plannedstmt->hasReturning)
    res = SPI_OK_INSERT_RETURNING;
   else
    res = SPI_OK_INSERT;
   break;
  case 131:
   if (queryDesc->plannedstmt->hasReturning)
    res = SPI_OK_DELETE_RETURNING;
   else
    res = SPI_OK_DELETE;
   break;
  case 128:
   if (queryDesc->plannedstmt->hasReturning)
    res = SPI_OK_UPDATE_RETURNING;
   else
    res = SPI_OK_UPDATE;
   break;
  default:
   return SPI_ERROR_OPUNKNOWN;
 }







 if (fire_triggers)
  eflags = 0;
 else
  eflags = EXEC_FLAG_SKIP_TRIGGERS;

 ExecutorStart(queryDesc, eflags);

 ExecutorRun(queryDesc, ForwardScanDirection, tcount, 1);

 _SPI_current->processed = queryDesc->estate->es_processed;

 if ((res == SPI_OK_SELECT || queryDesc->plannedstmt->hasReturning) &&
  queryDesc->dest->mydest == DestSPI)
 {
  if (_SPI_checktuples())
   elog(ERROR, "consistency check on SPI tuple count failed");
 }

 ExecutorFinish(queryDesc);
 ExecutorEnd(queryDesc);







 return res;
}
