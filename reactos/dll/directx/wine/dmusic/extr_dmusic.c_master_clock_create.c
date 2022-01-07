
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct master_clock {int ref; double freq; TYPE_2__ IReferenceClock_iface; } ;
struct TYPE_6__ {double QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef TYPE_2__ IReferenceClock ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int QueryPerformanceFrequency (TYPE_1__*) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__**) ;
 struct master_clock* heap_alloc_zero (int) ;
 int master_clock_vtbl ;

__attribute__((used)) static HRESULT master_clock_create(IReferenceClock **clock)
{
    struct master_clock *obj;
    LARGE_INTEGER freq;

    TRACE("(%p)\n", clock);

    if (!(obj = heap_alloc_zero(sizeof(*obj))))
        return E_OUTOFMEMORY;

    obj->IReferenceClock_iface.lpVtbl = &master_clock_vtbl;
    obj->ref = 1;
    QueryPerformanceFrequency(&freq);
    obj->freq = 10000000.0 / freq.QuadPart;

    *clock = &obj->IReferenceClock_iface;

    return S_OK;
}
