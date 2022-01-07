
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int font; } ;
typedef TYPE_1__ FONSttFontImpl ;


 int stbtt_GetFontVMetrics (int *,int*,int*,int*) ;

void fons__tt_getFontVMetrics(FONSttFontImpl *font, int *ascent, int *descent, int *lineGap)
{
 stbtt_GetFontVMetrics(&font->font, ascent, descent, lineGap);
}
