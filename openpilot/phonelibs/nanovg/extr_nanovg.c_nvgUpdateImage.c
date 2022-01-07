
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int userPtr; int (* renderUpdateTexture ) (int ,int,int ,int ,int,int,unsigned char const*) ;int (* renderGetTextureSize ) (int ,int,int*,int*) ;} ;
struct TYPE_5__ {TYPE_1__ params; } ;
typedef TYPE_2__ NVGcontext ;


 int stub1 (int ,int,int*,int*) ;
 int stub2 (int ,int,int ,int ,int,int,unsigned char const*) ;

void nvgUpdateImage(NVGcontext* ctx, int image, const unsigned char* data)
{
 int w, h;
 ctx->params.renderGetTextureSize(ctx->params.userPtr, image, &w, &h);
 ctx->params.renderUpdateTexture(ctx->params.userPtr, image, 0,0, w,h, data);
}
