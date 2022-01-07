
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int font; } ;
typedef TYPE_1__ FONSttFontImpl ;


 float stbtt_ScaleForPixelHeight (int *,float) ;

float fons__tt_getPixelHeightScale(FONSttFontImpl *font, float size)
{
 return stbtt_ScaleForPixelHeight(&font->font, size);
}
