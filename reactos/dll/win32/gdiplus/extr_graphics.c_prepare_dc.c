
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ unit; int scale; int hdc; int xres; int worldtrans; } ;
struct TYPE_10__ {scalar_t__ unit; int width; scalar_t__ dash; int* dashes; int style; int brush; int numdashes; } ;
struct TYPE_9__ {double X; double Y; } ;
typedef int REAL ;
typedef int LOGBRUSH ;
typedef size_t INT ;
typedef int HPEN ;
typedef TYPE_1__ GpPointF ;
typedef TYPE_2__ GpPen ;
typedef TYPE_3__ GpGraphics ;
typedef int DWORD ;


 int CoordinateSpaceDevice ;
 scalar_t__ DashStyleCustom ;
 int EndPath (int ) ;
 int ExtCreatePen (int ,int ,int *,size_t,int *) ;
 int GdipTransformMatrixPoints (int *,TYPE_1__*,int) ;
 int MAX_DASHLEN ;
 size_t SaveDC (int ) ;
 int SelectObject (int ,int ) ;
 int TRACE (char*,...) ;
 scalar_t__ UnitPixel ;
 scalar_t__ UnitWorld ;
 int WineCoordinateSpaceGdiDevice ;
 int create_gdi_logbrush (int ,int *) ;
 int free_gdi_logbrush (int *) ;
 int gdip_round (int) ;
 int gdip_transform_points (TYPE_3__*,int ,int ,TYPE_1__*,int) ;
 size_t min (int ,int) ;
 int sqrt (double) ;
 int units_to_pixels (int,scalar_t__,int ) ;

__attribute__((used)) static INT prepare_dc(GpGraphics *graphics, GpPen *pen)
{
    LOGBRUSH lb;
    HPEN gdipen;
    REAL width;
    INT save_state, i, numdashes;
    GpPointF pt[2];
    DWORD dash_array[MAX_DASHLEN];

    save_state = SaveDC(graphics->hdc);

    EndPath(graphics->hdc);

    if(pen->unit == UnitPixel){
        width = pen->width;
    }
    else{


        pt[0].X = 0.0;
        pt[0].Y = 0.0;
        pt[1].X = 1.0;
        pt[1].Y = 1.0;
        GdipTransformMatrixPoints(&graphics->worldtrans, pt, 2);
        width = sqrt((pt[1].X - pt[0].X) * (pt[1].X - pt[0].X) +
                     (pt[1].Y - pt[0].Y) * (pt[1].Y - pt[0].Y)) / sqrt(2.0);

        width *= units_to_pixels(pen->width, pen->unit == UnitWorld ? graphics->unit : pen->unit, graphics->xres);
        width *= graphics->scale;

        pt[0].X = 0.0;
        pt[0].Y = 0.0;
        pt[1].X = 1.0;
        pt[1].Y = 1.0;
        gdip_transform_points(graphics, WineCoordinateSpaceGdiDevice, CoordinateSpaceDevice, pt, 2);
        width *= sqrt((pt[1].X - pt[0].X) * (pt[1].X - pt[0].X) +
                      (pt[1].Y - pt[0].Y) * (pt[1].Y - pt[0].Y)) / sqrt(2.0);
    }

    if(pen->dash == DashStyleCustom){
        numdashes = min(pen->numdashes, MAX_DASHLEN);

        TRACE("dashes are: ");
        for(i = 0; i < numdashes; i++){
            dash_array[i] = gdip_round(width * pen->dashes[i]);
            TRACE("%d, ", dash_array[i]);
        }
        TRACE("\n and the pen style is %x\n", pen->style);

        create_gdi_logbrush(pen->brush, &lb);
        gdipen = ExtCreatePen(pen->style, gdip_round(width), &lb,
                              numdashes, dash_array);
        free_gdi_logbrush(&lb);
    }
    else
    {
        create_gdi_logbrush(pen->brush, &lb);
        gdipen = ExtCreatePen(pen->style, gdip_round(width), &lb, 0, ((void*)0));
        free_gdi_logbrush(&lb);
    }

    SelectObject(graphics->hdc, gdipen);

    return save_state;
}
