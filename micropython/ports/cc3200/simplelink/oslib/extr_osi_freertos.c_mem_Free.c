
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vPortFree (void*) ;

void mem_Free(void *pMem)
{
    vPortFree( pMem );
}
