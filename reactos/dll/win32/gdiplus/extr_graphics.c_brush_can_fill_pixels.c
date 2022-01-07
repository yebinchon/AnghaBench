
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bt; } ;
typedef TYPE_1__ GpBrush ;
typedef int BOOL ;







 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL brush_can_fill_pixels(GpBrush *brush)
{
    switch (brush->bt)
    {
    case 129:
    case 132:
    case 131:
    case 128:
    case 130:
        return TRUE;
    default:
        return FALSE;
    }
}
