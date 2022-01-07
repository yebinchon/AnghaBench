
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TaskHandle_t ;
struct TYPE_4__ {char* pcTaskName; } ;
typedef TYPE_1__ TCB_t ;


 int configASSERT (TYPE_1__*) ;
 TYPE_1__* prvGetTCBFromHandle (int ) ;

char *pcTaskGetName( TaskHandle_t xTaskToQuery )
{
TCB_t *pxTCB;



 pxTCB = prvGetTCBFromHandle( xTaskToQuery );
 configASSERT( pxTCB );
 return &( pxTCB->pcTaskName[ 0 ] );
}
