
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dlgw; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef TYPE_3__ pagesetup_data ;
typedef int hook_type ;
struct TYPE_5__ {int * lpfnPagePaintHook; int * lpfnPageSetupHook; } ;
typedef int * LPPAGESETUPHOOK ;





__attribute__((used)) static inline LPPAGESETUPHOOK pagesetup_get_hook(const pagesetup_data *data, hook_type which)
{
    switch(which)
    {
    case 128: return data->u.dlgw->lpfnPageSetupHook;
    case 129: return data->u.dlgw->lpfnPagePaintHook;
    }
    return ((void*)0);
}
