
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int bt; } ;
struct TYPE_10__ {int forecol; } ;
struct TYPE_9__ {int startcolor; } ;
struct TYPE_8__ {int centercolor; } ;
struct TYPE_7__ {int color; } ;
typedef TYPE_1__ GpSolidFill ;
typedef TYPE_2__ GpPathGradient ;
typedef TYPE_3__ GpLineGradient ;
typedef TYPE_4__ GpHatch ;
typedef TYPE_5__ GpBrush ;
typedef int COLORREF ;
typedef int ARGB ;


 int ARGB2COLORREF (int ) ;




 int FIXME (char*,int) ;

__attribute__((used)) static COLORREF get_gdi_brush_color(const GpBrush *brush)
{
    ARGB argb;

    switch (brush->bt)
    {
        case 128:
        {
            const GpSolidFill *sf = (const GpSolidFill *)brush;
            argb = sf->color;
            break;
        }
        case 131:
        {
            const GpHatch *hatch = (const GpHatch *)brush;
            argb = hatch->forecol;
            break;
        }
        case 130:
        {
            const GpLineGradient *line = (const GpLineGradient *)brush;
            argb = line->startcolor;
            break;
        }
        case 129:
        {
            const GpPathGradient *grad = (const GpPathGradient *)brush;
            argb = grad->centercolor;
            break;
        }
        default:
            FIXME("unhandled brush type %d\n", brush->bt);
            argb = 0;
            break;
    }
    return ARGB2COLORREF(argb);
}
