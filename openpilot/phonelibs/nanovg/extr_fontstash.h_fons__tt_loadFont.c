
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * userdata; } ;
struct TYPE_4__ {TYPE_2__ font; } ;
typedef TYPE_1__ FONSttFontImpl ;
typedef int FONScontext ;


 int FONS_NOTUSED (int) ;
 int stbtt_InitFont (TYPE_2__*,unsigned char*,int ) ;

int fons__tt_loadFont(FONScontext *context, FONSttFontImpl *font, unsigned char *data, int dataSize)
{
 int stbError;
 FONS_NOTUSED(dataSize);

 font->font.userdata = context;
 stbError = stbtt_InitFont(&font->font, data, 0);
 return stbError;
}
