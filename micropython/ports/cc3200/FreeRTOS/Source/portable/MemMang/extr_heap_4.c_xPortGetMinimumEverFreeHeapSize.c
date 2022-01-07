
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t xMinimumEverFreeBytesRemaining ;

size_t xPortGetMinimumEverFreeHeapSize( void )
{
 return xMinimumEverFreeBytesRemaining;
}
