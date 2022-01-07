
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int bt; } ;
struct TYPE_6__ {int forecol; int backcol; } ;
struct TYPE_5__ {int color; } ;
typedef TYPE_1__ GpSolidFill ;
typedef TYPE_2__ GpHatch ;
typedef TYPE_3__ GpBrush ;
typedef int BOOL ;






 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL brush_can_fill_path(GpBrush *brush, BOOL is_fill)
{
    switch (brush->bt)
    {
    case 129:
    {
        if (is_fill)
            return TRUE;
        else
        {

            return (((GpSolidFill*)brush)->color & 0xff000000) == 0xff000000;
        }
    }
    case 131:
    {
        GpHatch *hatch = (GpHatch*)brush;
        return ((hatch->forecol & 0xff000000) == 0xff000000) &&
               ((hatch->backcol & 0xff000000) == 0xff000000);
    }
    case 130:
    case 128:

    default:
        return FALSE;
    }
}
