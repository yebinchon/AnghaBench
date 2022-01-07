
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int userPtr; int (* renderDeleteTexture ) (int ,int) ;} ;
struct TYPE_5__ {TYPE_1__ params; } ;
typedef TYPE_2__ NVGcontext ;


 int stub1 (int ,int) ;

void nvgDeleteImage(NVGcontext* ctx, int image)
{
 ctx->params.renderDeleteTexture(ctx->params.userPtr, image);
}
