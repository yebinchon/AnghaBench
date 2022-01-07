
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* dlgw; } ;
struct TYPE_14__ {TYPE_2__ u; scalar_t__ unicode; } ;
typedef TYPE_3__ pagesetup_data ;
struct TYPE_15__ {scalar_t__ dmDriverExtra; scalar_t__ dmSize; } ;
struct TYPE_12__ {int hDevMode; } ;
typedef TYPE_4__ DEVMODEW ;
typedef int DEVMODEA ;


 TYPE_4__* GdiConvertToDevmodeW (int *) ;
 int GetProcessHeap () ;
 TYPE_4__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 TYPE_4__* HeapAlloc (int ,int ,scalar_t__) ;
 int memcpy (TYPE_4__*,TYPE_4__*,scalar_t__) ;

__attribute__((used)) static DEVMODEW *pagesetup_get_devmode(const pagesetup_data *data)
{
    DEVMODEW *dm = GlobalLock(data->u.dlgw->hDevMode);
    DEVMODEW *ret;

    if(data->unicode)
    {


        ret = HeapAlloc(GetProcessHeap(), 0, dm->dmSize + dm->dmDriverExtra);
        memcpy(ret, dm, dm->dmSize + dm->dmDriverExtra);
    }
    else
        ret = GdiConvertToDevmodeW((DEVMODEA *)dm);

    GlobalUnlock(data->u.dlgw->hDevMode);
    return ret;
}
