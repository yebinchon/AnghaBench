
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ UBaseType_t ;
struct TYPE_6__ {int * pxNext; } ;
struct TYPE_7__ {TYPE_1__ xListEnd; } ;
struct TYPE_8__ {scalar_t__ ucStaticallyAllocated; TYPE_2__ xTasksWaitingForBits; } ;
typedef TYPE_2__ List_t ;
typedef int ListItem_t ;
typedef TYPE_3__ EventGroup_t ;
typedef scalar_t__ EventGroupHandle_t ;


 int configASSERT (int) ;
 int eventUNBLOCKED_DUE_TO_BIT_SET ;
 scalar_t__ listCURRENT_LIST_LENGTH (TYPE_2__ const*) ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFALSE ;
 int traceEVENT_GROUP_DELETE (scalar_t__) ;
 int vPortFree (TYPE_3__*) ;
 int vTaskSuspendAll () ;
 int xTaskRemoveFromUnorderedEventList (int *,int ) ;
 int xTaskResumeAll () ;

void vEventGroupDelete( EventGroupHandle_t xEventGroup )
{
EventGroup_t *pxEventBits = ( EventGroup_t * ) xEventGroup;
const List_t *pxTasksWaitingForBits = &( pxEventBits->xTasksWaitingForBits );

 vTaskSuspendAll();
 {
  traceEVENT_GROUP_DELETE( xEventGroup );

  while( listCURRENT_LIST_LENGTH( pxTasksWaitingForBits ) > ( UBaseType_t ) 0 )
  {


   configASSERT( pxTasksWaitingForBits->xListEnd.pxNext != ( ListItem_t * ) &( pxTasksWaitingForBits->xListEnd ) );
   ( void ) xTaskRemoveFromUnorderedEventList( pxTasksWaitingForBits->xListEnd.pxNext, eventUNBLOCKED_DUE_TO_BIT_SET );
  }
 }
 ( void ) xTaskResumeAll();
}
