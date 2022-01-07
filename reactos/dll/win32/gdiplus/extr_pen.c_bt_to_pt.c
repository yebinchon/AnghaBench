
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GpPenType ;
typedef int GpBrushType ;







 int PenTypeHatchFill ;
 int PenTypeLinearGradient ;
 int PenTypePathGradient ;
 int PenTypeSolidColor ;
 int PenTypeTextureFill ;
 int PenTypeUnknown ;

__attribute__((used)) static GpPenType bt_to_pt(GpBrushType bt)
{
    switch(bt){
        case 129:
            return PenTypeSolidColor;
        case 132:
            return PenTypeHatchFill;
        case 128:
            return PenTypeTextureFill;
        case 130:
            return PenTypePathGradient;
        case 131:
            return PenTypeLinearGradient;
        default:
            return PenTypeUnknown;
    }
}
