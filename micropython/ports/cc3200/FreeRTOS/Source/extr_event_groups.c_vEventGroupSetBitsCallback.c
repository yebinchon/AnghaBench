
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int EventBits_t ;


 int xEventGroupSetBits (void*,int ) ;

void vEventGroupSetBitsCallback( void *pvEventGroup, const uint32_t ulBitsToSet )
{
 ( void ) xEventGroupSetBits( pvEventGroup, ( EventBits_t ) ulBitsToSet );
}
