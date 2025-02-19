
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; int csFilter; } ;
struct TYPE_7__ {TYPE_1__ filter; int csRenderLock; } ;
struct TYPE_8__ {int in_loop; TYPE_2__ renderer; int blocked; } ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_3__ DSoundRenderImpl ;


 int DSoundRender_UpdatePositions (TYPE_3__*,scalar_t__*,scalar_t__*) ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int S_OK ;
 scalar_t__ State_Running ;
 int WaitForSingleObject (int ,int) ;

__attribute__((used)) static HRESULT DSoundRender_HandleEndOfStream(DSoundRenderImpl *This)
{
    while (This->renderer.filter.state == State_Running)
    {
        DWORD pos1, pos2;
        DSoundRender_UpdatePositions(This, &pos1, &pos2);
        if (pos1 == pos2)
            break;

        This->in_loop = 1;
        LeaveCriticalSection(&This->renderer.filter.csFilter);
        LeaveCriticalSection(&This->renderer.csRenderLock);
        WaitForSingleObject(This->blocked, 10);
        EnterCriticalSection(&This->renderer.csRenderLock);
        EnterCriticalSection(&This->renderer.filter.csFilter);
        This->in_loop = 0;
    }

    return S_OK;
}
