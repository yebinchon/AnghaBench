
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
typedef TYPE_1__ NVGcontext ;


 int fonsGetFontByName (int ,char const*) ;

int nvgFindFont(NVGcontext* ctx, const char* name)
{
 if (name == ((void*)0)) return -1;
 return fonsGetFontByName(ctx->fs, name);
}
