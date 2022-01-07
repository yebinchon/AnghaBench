
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* dlgw; } ;
struct TYPE_13__ {TYPE_2__ u; scalar_t__ unicode; } ;
typedef TYPE_3__ pagesetup_data ;
struct TYPE_15__ {scalar_t__ dmDriverExtra; scalar_t__ dmSize; } ;
struct TYPE_14__ {scalar_t__ dmDriverExtra; scalar_t__ dmSize; } ;
struct TYPE_11__ {int hDevMode; } ;
typedef scalar_t__ DWORD ;
typedef TYPE_4__ DEVMODEW ;
typedef TYPE_5__ DEVMODEA ;


 int GMEM_MOVEABLE ;
 int GetProcessHeap () ;
 int GlobalAlloc (int ,scalar_t__) ;
 void* GlobalLock (int ) ;
 int GlobalReAlloc (int ,scalar_t__,int ) ;
 int GlobalUnlock (int ) ;
 int HeapFree (int ,int ,TYPE_5__*) ;
 TYPE_5__* convert_to_devmodeA (TYPE_4__*) ;
 int memcpy (void*,void*,scalar_t__) ;

__attribute__((used)) static void pagesetup_set_devmode(pagesetup_data *data, DEVMODEW *dm)
{
    DEVMODEA *dmA = ((void*)0);
    void *src, *dst;
    DWORD size;

    if(data->unicode)
    {
        size = dm->dmSize + dm->dmDriverExtra;
        src = dm;
    }
    else
    {
        dmA = convert_to_devmodeA(dm);
        size = dmA->dmSize + dmA->dmDriverExtra;
        src = dmA;
    }

    if(data->u.dlgw->hDevMode)
        data->u.dlgw->hDevMode = GlobalReAlloc(data->u.dlgw->hDevMode, size,
                                               GMEM_MOVEABLE);
    else
        data->u.dlgw->hDevMode = GlobalAlloc(GMEM_MOVEABLE, size);

    dst = GlobalLock(data->u.dlgw->hDevMode);
    memcpy(dst, src, size);
    GlobalUnlock(data->u.dlgw->hDevMode);
    HeapFree(GetProcessHeap(), 0, dmA);
}
