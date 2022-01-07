
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ NVGcontext ;


 int fonsAddFallbackFont (int ,int,int) ;

int nvgAddFallbackFontId(NVGcontext* ctx, int baseFont, int fallbackFont)
{
 if(baseFont == -1 || fallbackFont == -1) return 0;
 return fonsAddFallbackFont(ctx->fs, baseFont, fallbackFont);
}
