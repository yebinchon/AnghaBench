
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_7__ {scalar_t__ uxPriority; scalar_t__ uxTCBNumber; } ;
typedef TYPE_1__ TCB_t ;


 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFALSE ;
 int portSETUP_TCB (TYPE_1__*) ;
 int prvAddTaskToReadyList (TYPE_1__*) ;
 int prvInitialiseTaskLists () ;
 TYPE_1__* pxCurrentTCB ;
 int taskENTER_CRITICAL () ;
 int taskEXIT_CRITICAL () ;
 int taskYIELD_IF_USING_PREEMPTION () ;
 int traceTASK_CREATE (TYPE_1__*) ;
 scalar_t__ uxCurrentNumberOfTasks ;
 scalar_t__ uxTaskNumber ;
 scalar_t__ xSchedulerRunning ;

__attribute__((used)) static void prvAddNewTaskToReadyList( TCB_t *pxNewTCB )
{


 taskENTER_CRITICAL();
 {
  uxCurrentNumberOfTasks++;
  if( pxCurrentTCB == ((void*)0) )
  {


   pxCurrentTCB = pxNewTCB;

   if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
   {



    prvInitialiseTaskLists();
   }
   else
   {
    mtCOVERAGE_TEST_MARKER();
   }
  }
  else
  {



   if( xSchedulerRunning == pdFALSE )
   {
    if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
    {
     pxCurrentTCB = pxNewTCB;
    }
    else
    {
     mtCOVERAGE_TEST_MARKER();
    }
   }
   else
   {
    mtCOVERAGE_TEST_MARKER();
   }
  }

  uxTaskNumber++;







  traceTASK_CREATE( pxNewTCB );

  prvAddTaskToReadyList( pxNewTCB );

  portSETUP_TCB( pxNewTCB );
 }
 taskEXIT_CRITICAL();

 if( xSchedulerRunning != pdFALSE )
 {


  if( pxCurrentTCB->uxPriority < pxNewTCB->uxPriority )
  {
   taskYIELD_IF_USING_PREEMPTION();
  }
  else
  {
   mtCOVERAGE_TEST_MARKER();
  }
 }
 else
 {
  mtCOVERAGE_TEST_MARKER();
 }
}
