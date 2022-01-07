
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ NVGcontext ;


 int fonsAddFont (int ,char const*,char const*) ;

int nvgCreateFont(NVGcontext* ctx, const char* name, const char* path)
{
 return fonsAddFont(ctx->fs, name, path);
}
