
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LOGBRUSH ;
typedef int HBRUSH ;
typedef int GpBrush ;


 int CreateBrushIndirect (int *) ;
 scalar_t__ Ok ;
 scalar_t__ create_gdi_logbrush (int const*,int *) ;
 int free_gdi_logbrush (int *) ;

__attribute__((used)) static HBRUSH create_gdi_brush(const GpBrush *brush)
{
    LOGBRUSH lb;
    HBRUSH gdibrush;

    if (create_gdi_logbrush(brush, &lb) != Ok) return 0;

    gdibrush = CreateBrushIndirect(&lb);
    free_gdi_logbrush(&lb);

    return gdibrush;
}
