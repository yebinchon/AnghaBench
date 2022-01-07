
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_3__ {int xStateListItem; } ;
typedef TYPE_1__ TCB_t ;
typedef scalar_t__ BaseType_t ;


 scalar_t__ listGET_OWNER_OF_HEAD_ENTRY (int *) ;
 scalar_t__ listLIST_IS_EMPTY (int *) ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFALSE ;
 int prvDeleteTCB (TYPE_1__*) ;
 int taskENTER_CRITICAL () ;
 int taskEXIT_CRITICAL () ;
 int uxCurrentNumberOfTasks ;
 scalar_t__ uxDeletedTasksWaitingCleanUp ;
 int uxListRemove (int *) ;
 int vTaskSuspendAll () ;
 int xTaskResumeAll () ;
 int xTasksWaitingTermination ;

__attribute__((used)) static void prvCheckTasksWaitingTermination( void )
{
}
