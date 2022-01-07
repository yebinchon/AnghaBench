
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ NVGcontext ;


 int fonsAddFontMem (int ,char const*,unsigned char*,int,int) ;

int nvgCreateFontMem(NVGcontext* ctx, const char* name, unsigned char* data, int ndata, int freeData)
{
 return fonsAddFontMem(ctx->fs, name, data, ndata, freeData);
}
