
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_9__ {int bt; } ;
struct TYPE_8__ {int color; } ;
struct TYPE_7__ {int lbHatch; int lbColor; void* lbStyle; } ;
typedef TYPE_1__ LOGBRUSH ;
typedef int HBITMAP ;
typedef int GpStatus ;
typedef TYPE_2__ GpSolidFill ;
typedef int GpHatch ;
typedef TYPE_3__ GpBrush ;


 int ARGB2COLORREF (int ) ;
 void* BS_PATTERN ;
 void* BS_SOLID ;


 int FIXME (char*,int) ;
 int Ok ;
 int OutOfMemory ;
 int create_hatch_bitmap (int const*) ;
 int get_gdi_brush_color (TYPE_3__ const*) ;

__attribute__((used)) static GpStatus create_gdi_logbrush(const GpBrush *brush, LOGBRUSH *lb)
{
    switch (brush->bt)
    {
        case 128:
        {
            const GpSolidFill *sf = (const GpSolidFill *)brush;
            lb->lbStyle = BS_SOLID;
            lb->lbColor = ARGB2COLORREF(sf->color);
            lb->lbHatch = 0;
            return Ok;
        }

        case 129:
        {
            const GpHatch *hatch = (const GpHatch *)brush;
            HBITMAP hbmp;

            hbmp = create_hatch_bitmap(hatch);
            if (!hbmp) return OutOfMemory;

            lb->lbStyle = BS_PATTERN;
            lb->lbColor = 0;
            lb->lbHatch = (ULONG_PTR)hbmp;
            return Ok;
        }

        default:
            FIXME("unhandled brush type %d\n", brush->bt);
            lb->lbStyle = BS_SOLID;
            lb->lbColor = get_gdi_brush_color(brush);
            lb->lbHatch = 0;
            return Ok;
    }
}
