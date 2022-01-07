
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_3__ {int lbStyle; int lbHatch; } ;
typedef TYPE_1__ LOGBRUSH ;
typedef int HGDIOBJ ;
typedef int GpStatus ;



 int DeleteObject (int ) ;
 int Ok ;

__attribute__((used)) static GpStatus free_gdi_logbrush(LOGBRUSH *lb)
{
    switch (lb->lbStyle)
    {
        case 128:
            DeleteObject((HGDIOBJ)(ULONG_PTR)lb->lbHatch);
            break;
    }
    return Ok;
}
