
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int userPtr; int (* renderGetTextureSize ) (int ,int,int*,int*) ;} ;
struct TYPE_5__ {TYPE_1__ params; } ;
typedef TYPE_2__ NVGcontext ;


 int stub1 (int ,int,int*,int*) ;

void nvgImageSize(NVGcontext* ctx, int image, int* w, int* h)
{
 ctx->params.renderGetTextureSize(ctx->params.userPtr, image, w, h);
}
