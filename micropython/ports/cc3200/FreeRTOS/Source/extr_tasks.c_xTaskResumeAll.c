
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_5__ {scalar_t__ uxPriority; } ;
struct TYPE_4__ {scalar_t__ uxPriority; int xStateListItem; int xEventListItem; } ;
typedef TYPE_1__ TCB_t ;
typedef void* BaseType_t ;


 int configASSERT (scalar_t__) ;
 scalar_t__ listGET_OWNER_OF_HEAD_ENTRY (int *) ;
 scalar_t__ listLIST_IS_EMPTY (int *) ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFALSE ;
 void* pdTRUE ;
 int prvAddTaskToReadyList (TYPE_1__*) ;
 int prvResetNextTaskUnblockTime () ;
 TYPE_2__* pxCurrentTCB ;
 int taskENTER_CRITICAL () ;
 int taskEXIT_CRITICAL () ;
 int taskYIELD_IF_USING_PREEMPTION () ;
 scalar_t__ uxCurrentNumberOfTasks ;
 int uxListRemove (int *) ;
 scalar_t__ uxPendedTicks ;
 scalar_t__ uxSchedulerSuspended ;
 int xPendingReadyList ;
 scalar_t__ xTaskIncrementTick () ;
 scalar_t__ xYieldPending ;

BaseType_t xTaskResumeAll( void )
{
TCB_t *pxTCB = ((void*)0);
BaseType_t xAlreadyYielded = pdFALSE;



 configASSERT( uxSchedulerSuspended );






 taskENTER_CRITICAL();
 {
  --uxSchedulerSuspended;

  if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
  {
   if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
   {


    while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
    {
     pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( ( &xPendingReadyList ) );
     ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
     ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
     prvAddTaskToReadyList( pxTCB );



     if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
     {
      xYieldPending = pdTRUE;
     }
     else
     {
      mtCOVERAGE_TEST_MARKER();
     }
    }

    if( pxTCB != ((void*)0) )
    {






     prvResetNextTaskUnblockTime();
    }





    {
     UBaseType_t uxPendedCounts = uxPendedTicks;

     if( uxPendedCounts > ( UBaseType_t ) 0U )
     {
      do
      {
       if( xTaskIncrementTick() != pdFALSE )
       {
        xYieldPending = pdTRUE;
       }
       else
       {
        mtCOVERAGE_TEST_MARKER();
       }
       --uxPendedCounts;
      } while( uxPendedCounts > ( UBaseType_t ) 0U );

      uxPendedTicks = 0;
     }
     else
     {
      mtCOVERAGE_TEST_MARKER();
     }
    }

    if( xYieldPending != pdFALSE )
    {





     taskYIELD_IF_USING_PREEMPTION();
    }
    else
    {
     mtCOVERAGE_TEST_MARKER();
    }
   }
  }
  else
  {
   mtCOVERAGE_TEST_MARKER();
  }
 }
 taskEXIT_CRITICAL();

 return xAlreadyYielded;
}
