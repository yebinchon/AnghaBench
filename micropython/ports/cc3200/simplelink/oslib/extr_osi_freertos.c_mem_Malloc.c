
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pvPortMalloc (size_t) ;

void * mem_Malloc(unsigned long Size)
{
    return ( void * ) pvPortMalloc( (size_t)Size );
}
