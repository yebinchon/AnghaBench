
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vQueueDelete (scalar_t__) ;
 int vTaskDelete (scalar_t__) ;
 scalar_t__ xSimpleLinkSpawnQueue ;
 scalar_t__ xSimpleLinkSpawnTaskHndl ;

void VDeleteSimpleLinkSpawnTask( void )
{
 if(xSimpleLinkSpawnTaskHndl)
 {
  vTaskDelete( xSimpleLinkSpawnTaskHndl );
  xSimpleLinkSpawnTaskHndl = 0;
 }

 if(xSimpleLinkSpawnQueue)
 {
  vQueueDelete( xSimpleLinkSpawnQueue );
  xSimpleLinkSpawnQueue = 0;
 }
}
