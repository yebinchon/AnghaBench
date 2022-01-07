
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* lpLink; int lpLcl; } ;
typedef TYPE_1__* LPDDRAWI_DIRECTDRAW_INT ;
typedef int DDRAWI_DIRECTDRAW_INT ;


 int DxHeapMemAlloc (TYPE_1__*,int) ;

LPDDRAWI_DIRECTDRAW_INT
internal_directdraw_int_alloc(LPDDRAWI_DIRECTDRAW_INT This)
{
    LPDDRAWI_DIRECTDRAW_INT newThis;
    DxHeapMemAlloc(newThis, sizeof(DDRAWI_DIRECTDRAW_INT));
    if (newThis)
    {
        newThis->lpLcl = This->lpLcl;
        newThis->lpLink = This;
    }

    return newThis;
}
